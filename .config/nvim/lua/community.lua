-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.pack.python" },
  -- import/override with your plugins folder
}
