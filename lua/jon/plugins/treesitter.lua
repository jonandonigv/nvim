return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter")

    -- configure nvim-treesitter (parser installation only, the rest is built into Neovim)
    treesitter.setup({
      install_dir = vim.fn.stdpath("data") .. "/site",
    })

    -- ensure these language parsers are installed
    local parsers = {
      "json",
      "javascript",
      "typescript",
      "tsx",
      "yaml",
      "html",
      "css",
      "prisma",
      "markdown",
      "markdown_inline",
      "svelte",
      "graphql",
      "bash",
      "lua",
      "vim",
      "dockerfile",
      "gitignore",
      "query",
      "vimdoc",
      "c",
      "go",
      "gomod",
      "gosum",
      "zig",
      "rust",
    }
    treesitter.install(parsers)

    -- enable treesitter syntax highlighting (Neovim built-in)
    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })

    -- enable treesitter indentation (experimental)
    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        pcall(function()
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end)
      end,
    })

    -- use bash parser for zsh files
    vim.treesitter.language.register("bash", "zsh")

    -- incremental selection using Neovim 0.12 built-in node text objects
    vim.keymap.set("n", "<C-space>", "v_an", { desc = "Incremental selection: select node" })
    vim.keymap.set("v", "<C-space>", "an", { desc = "Incremental selection: expand node" })
    vim.keymap.set("v", "<bs>", "in", { desc = "Incremental selection: shrink node" })
  end,
}
