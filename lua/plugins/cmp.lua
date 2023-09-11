
local cmp = {

    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
    },
    event = "InsertEnter",
    config = function(_, opts) 

        local cmp = require('cmp')
        local cmp_keybind = {
            ['<S-TAB>'] = cmp.mapping.select_prev_item(),
            ['<TAB>'] = cmp.mapping.select_next_item(),
            -- complete
            -- ['<TAB'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
            -- cancel
            ['<A-,>'] = cmp.mapping({
                i = cmp.mapping.abort(),
                c = cmp.mapping.close(),
            }),
            -- Accept currently selected item. If none selected, `select` first item.
            -- Set `select` to `false` to only confirm explicitly selected items.
            ['<C-s>'] = cmp.mapping.confirm({
                select = true ,
                behavior = cmp.ConfirmBehavior.Replace
            }),
        }

        cmpsetup = {
            snippet = {
                expand = function(args)
                    -- require('luasnip').lsp_expand(args.body)
                end,
            },

            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },

            sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    -- { name = 'luasnip' },
                }, 
                { 
                    { name = 'buffer' },
                    { name = 'path' }
                }),

            mapping = cmp_keybind,
        }
        cmp.setup(cmpsetup)
        cmp.setup.cmdline({'/', '?'}, {
            sources = {
                { name = 'buffer' }
            }
        })
        cmp.setup.cmdline(':', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources(
            {
                { name = 'path' }
            }, 
            {
                { name = 'cmdline' }
            }
            )
        })

    end,
}

return cmp
