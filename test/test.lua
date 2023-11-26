function try(f, catch_f)
  local status, exception = pcall(f)
  if not status then
    catch_f(exception)
  end
end

try(function()
  local uv = vim.loop
  local cwd = vim.api.nvim_call_function('getcwd', {})
  local testdir = cwd .. '/test'
  local runtimepath = vim.api.nvim_get_option 'runtimepath'
  vim.api.nvim_set_option('runtimepath', table.concat({ cwd, runtimepath }, ','))
  package.path = package.path .. string.format(';%s/?.lua', testdir)

  local test_modules = vim.fn.glob(testdir .. '/*_spec.lua', 0, 1)
  local test_result = { total = 0, failed = 0 }

  local function print_test_result(desc, is_failed, message)
    test_result.total = test_result.total + 1
    if is_failed then
      print(string.format('%s%s \n', '🟥', desc))
      print(string.format('   * %s', message))
      test_result.failed = test_result.failed + 1
    else
      print(string.format('%s%s \n', '🟩', desc))
    end
  end

  local function print_summary()
    print(
      string.format(
        'Tests: %d failed, %d passed, %d total',
        test_result.failed,
        test_result.total - test_result.failed,
        test_result.total
      )
    )
  end

  coroutine.wrap(function()
    test = function(desc, f)
      local self = coroutine.running()
      local nparams = debug.getinfo(f).nparams
      local is_async = nparams == 1
      local is_failed = false
      local message = nil

      expect = function(a)
        return {
          toBe = function(b)
            if a ~= b then
              is_failed = true
              message = string.format('Expected %s but received %s', a, b)
            end
          end,

          toBeGreaterThanOrEqual = function(b)
            if a < b then
              is_failed = true
              message = string.format('Expected value >= %s but value is %s', b, a)
            end
          end,
        }
      end

      f(function()
        expect = nil
        print_test_result(desc, is_failed, message)

        assert(coroutine.resume(self))
      end)

      if is_async then
        coroutine.yield()
      else
        expect = nil
        print_test_result(desc, is_failed, message)
      end
    end

    for _, module in ipairs(test_modules) do
      print('> ' .. vim.fn.fnamemodify(module, ':t'))
      loadfile(module)()
    end

    print_summary()

    if test_result.failed > 0 then
      vim.api.nvim_command 'cq'
    else
      vim.api.nvim_command 'q'
    end
  end)()
end, function(err)
  print(vim.inspect(err))
  vim.api.nvim_command 'cq'
end)
