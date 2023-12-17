local function misc(opts, c)
  return {
    -- check health
    healthSuccess = { fg = c.white, bg = c.green_bold },
    helpCommand = { fg = c.none, bg = c.blue_bg },

    -- gitconfig
    gitconfigSection = { fg = c.blue_bold, bold = true },
  }
end

return misc
