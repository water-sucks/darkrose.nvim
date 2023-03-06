return {
  GitSignsAdd = { fg = C.diff.add },
  GitSignsChange = { fg = C.diff.change },
  GitSignsDelete = { fg = C.diff.delete },
  SignAdd = { link = "GitSignsAdd" },
  SignChange = { link = "GitSignsChange" },
  SignDelete = { link = "GitSignsDelete" },
}
