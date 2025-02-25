local function misc(opts, c)
  return {
    -- check health
    healthSuccess = { fg = c.fg.green45, bold = true },
    helpCommand = { fg = c.fg.purple, bold = true },

    -- gitconfig
    gitconfigSection = { fg = c.fg.red_bold, bold = true },
  }
end

return misc
