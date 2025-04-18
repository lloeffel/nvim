return {
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
    lazy = false,
  },
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    priority = 1000,
    lazy = false,
    config = function()
      -- Define your theme switcher here
      local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
      vim.api.nvim_create_autocmd('TextYankPost', {
        callback = function()
          vim.highlight.on_yank()
        end,
        group = highlight_group,
        pattern = '*',
      })

      function Gruvbox(isTransparent)
        isTransparent = isTransparent or false
        require("gruvbox").setup({
          transparent_mode = isTransparent,
        })
        vim.cmd.colorscheme("gruvbox")
      end

      function Onedark(isTransparent)
        isTransparent = isTransparent or false
        require("onedark").setup({
          style = 'dark',
          transparent = isTransparent,
        })
        vim.cmd.colorscheme("onedark")
      end

      function SetCS(color, isTransparent)
        color = color or 'onedark'
        isTransparent = isTransparent or false
        if color == 'gruvbox' then
          Gruvbox(isTransparent)
        else
          Onedark(isTransparent)
        end
      end

      _G.SetCS = SetCS  -- optional global function
      SetCS()  -- default on start
    end
  }
}
