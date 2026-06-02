# AGENTS.md

## Repo overview

LazyVim-based Neovim config. `init.lua` bootstraps lazy.nvim → loads LazyVim → imports `lua/plugins/` overrides.

## Directory convention

- `lua/config/` — lazy.nvim bootstrap (`lazy.lua`), options, keymaps, autocmds
- `lua/plugins/` — custom plugin specs that extend/override LazyVim defaults
- `lazyvim.json` — declares LazyVim **extras** (lang support). Add new language extras here, not in `lua/plugins/`.
- `lazy-lock.json` — auto-generated pinfile; never edit by hand.

## Commands

- Format Lua: `stylua .` (2-space indent, 120 col)
- Lint: none configured

## Key customizations

- **Colorscheme**: `gruvbox` (overrides LazyVim default via `lua/plugins/lazyvim.lua`)
- **File finder**: `fff.nvim` replaces the default picker. All `<leader>f`/`<leader>s` keymaps are redirected to `fff` in `lua/plugins/fff.lua`
- **LSP inlay hints**: disabled
- **File explorer**: Snacks.explorer positioned on the right side (`lua/plugins/explorer.lua`)
- **Strudel**: live coding plugin (`lua/plugins/strudel.lua`)
- **LazyVim extras** (in `lazyvim.json`): docker, go, json, markdown, typescript, biome

## Rules of thumb

- Plugin overrides use the same pattern: return `{ { "plugin-name", opts = { ... } } }` to merge into LazyVim's default spec.
- Don't add files outside `lua/plugins/` and `lua/config/` unless you know the pattern.
- `lazy-lock.json` is managed by `:Lazy sync` / `:Lazy restore` — don't touch it.
