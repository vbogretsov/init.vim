require('telescope').setup{
  defaults = {
    -- preview = false
    vimgrep_arguments = {
     "rg",
     "--color=never",
     "--no-heading",
     "--with-filename",
     "--line-number",
     "--column",
     "--smart-case",
    },
    prompt_prefix = "   ",
    layout_strategy = 'vertical',
    layout_config = {
      height = 0.9,
      mirror = false,
      prompt_position = 'bottom',
    },
    set_env = { ["COLORTERM"] = "truecolor" },
  },
}
