-- require("impatient")
-- require("utils.global")

-- 基础配置
require("basic")
-- 快捷键映射
require("keybindings")
-- Packer插件管理
require("plugins")
-- 主题设置
-- require("colorscheme")
-- 自动命令
-- require("autocmds")

-- 内置LSP
-- require("lsp.setup")
-- 自动补全
-- require("cmp.setup")
-- 格式化
-- require("format.setup")
-- DAP
-- require("dap.setup")

-- require("dap.vimspector")
-- utils
-- 复制到windows剪贴板
-- require('utils.fix-yank')

-- plugin config
require('plugin-config/nvim-tree')
require('plugin-config/bufferline')

-- theme
require('zephyr')

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup()

require('lspconfig')['rust_analyzer'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    -- Server-specific settings...
    settings = {
      ["rust-analyzer"] = {}
    }
}

require('lspconfig')['pyright'].setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require('lspconfig')['tsserver'].setup {
  on_attach = on_attach,
  capabilities = capabilities
}


require('lsp/nvim-cmp')
require("plugin-config/nvim-treesitter")
require('plugin-config/nvim-comment')
require('plugin-config/nvim-term')
