return {
  "numToStr/Comment.nvim",
  -- plugin only needed when reading file or creating new file
  event = { "BufReadPre", "BufNewFile" },
  config = true -- runs require("Comment").setup()
}
