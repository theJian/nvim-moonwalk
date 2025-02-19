local function misc(opts, c)
  return {
    -- check health
    healthSuccess = { fg = c.white, bg = c.fg.green_bold },
    helpCommand = { fg = c.none, bg = c.bg.blue },

    -- gitconfig
    gitconfigSection = { fg = c.fg.blue_bold, bold = true },
  }
end

return misc
