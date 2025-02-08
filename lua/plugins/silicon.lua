return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  config = function()
    require("silicon").setup({
      font = "CaskaydiaCove NF=34;Noto Color Emoji=34",
      background = "#d79921",
    })
  end
}
