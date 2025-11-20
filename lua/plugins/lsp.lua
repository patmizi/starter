return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_organize_imports", lsp_format = "first" },
        lua = { "stylua" },
        cpp = { "clang_format" },
        go = { "goimports", "gofumpt" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {

        jsonls = {
          settings = {
            json = {
              schemas = {
                {
                  description = "LLVM compilation database",
                  fileMatch = {
                    "compile_commands.json",
                  },
                  url = "https://json.schemastore.org/compile-commands.json",
                },
                {
                  description = "Config file for Command Task Runner",
                  fileMatch = {
                    "commands.json",
                  },
                  url = "https://json.schemastore.org/commands.json",
                },
                {
                  description = "Json schema for properties json file for a GitHub Workflow template",
                  fileMatch = {
                    ".github/workflow-templates/**.properties.json",
                  },
                  url = "https://json.schemastore.org/github-workflow-template-properties.json",
                },
              },
            },
          },
        },

        yamlls = {
          settings = {
            yaml = {
              schemas = {
                ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
              },
              customTags = {
                -- These are all related to AWS CloudFormation.
                "!And sequence",
                "!Base64",
                "!Cidr sequence",
                "!Equals sequence",
                "!FindInMap sequence",
                "!GetAZs",
                "!GetAtt",
                "!If sequence",
                "!ImportValue",
                "!Join sequence",
                "!Length sequence",
                "!Not sequence",
                "!Or sequence",
                "!Ref",
                "!Select sequence",
                "!Split sequence",
                "!Sub",
                "!Transform scalar",
              },
            },
          },
        },

        bashls = {
          settings = {
            filetypes = { "sh", "bash", "zsh" },
          },
        },

        clangd = {
          init_options = {
            fallbackFlags = {
              "-I/usr/include/wine/windows/",
            },
          },
        },

        gopls = {
          analyses = {
            unusedparams = true,
          },
          staticcheck = true,
          gofumpt = true,
        },

        vtsls = {},
      },
    },
  },
}
