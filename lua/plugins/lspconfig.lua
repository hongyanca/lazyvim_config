-- https://docs.astral.sh/ruff/editors/setup/#neovim
-- Use Ruff exclusively for linting, formatting, and organizing imports.
-- Disable those capabilities for Pyright.

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Configure pyright
        pyright = {
          -- Settings passed to pyright's setup method
          settings = {
            pyright = {
              -- Disable pyright's organize imports feature, let ruff handle it
              disableOrganizeImports = true,
            },
            python = {
              analysis = {
                -- Ignore all files for analysis to exclusively use Ruff for linting
                ignore = { "*" },
              },
            },
          },
        },
      },
    },
  },
}
