return {
    "numToStr/Comment.nvim",
    name = "programming--comment",
    event = { "BufReadPre", "BufNewFile" },
    config = true -- runs require.("Comment").setup()
}
