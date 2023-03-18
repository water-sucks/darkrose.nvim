return {
  LspReferenceText = { bg = C.bg_visual }, -- used for highlighting "text" references
  LspReferenceRead = { link = "LspReferenceText" }, -- used for highlighting "read" references
  LspReferenceWrite = { link = "LspReferenceText" }, -- used for highlighting "write" references

  LspDiagnosticsDefaultError = { fg = C.error }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
  LspDiagnosticsDefaultWarning = { fg = C.warning }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
  LspDiagnosticsDefaultInformation = { fg = C.info }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
  LspDiagnosticsDefaultHint = { fg = C.hint }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
  LspDiagnosticsVirtualTextError = { fg = U.shade(C.error, 50), bg = C.error }, -- Used for "Error" diagnostic virtual text
  LspDiagnosticsVirtualTextWarning = { fg = U.shade(C.warning, 50), bg = C.warning }, -- Used for "Warning" diagnostic virtual text
  LspDiagnosticsVirtualTextInformation = { fg = U.shade(C.info, 50), bg = C.info }, -- Used for "Information" diagnostic virtual text
  LspDiagnosticsVirtualTextHint = { fg = U.shade(C.hint, 50), bg = C.hint }, -- Used for "Hint" diagnostic virtual text
  LspDiagnosticsUnderlineError = { style = "undercurl", sp = C.error }, -- Used to underline "Error" diagnostics
  LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = C.warning }, -- Used to underline "Warning" diagnostics
  LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = C.info }, -- Used to underline "Information" diagnostics
  LspDiagnosticsUnderlineHint = { style = "undercurl", sp = C.hint }, -- Used to underline "Hint" diagnostics

  LspDiagnosticsError = { fg = C.error },
  LspDiagnosticsWarning = { fg = C.warning },
  LspDiagnosticsInformation = { fg = C.info },
  LspDiagnosticsHint = { fg = C.hint },

  DiagnosticError = { link = "LspDiagnosticsDefaultError" }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
  DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
  DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
  DiagnosticHint = { link = "LspDiagnosticsDefaultHint" }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
  DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" }, -- Used to underline "Error" diagnostics
  DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" }, -- Used to underline "Warning" diagnostics
  DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" }, -- Used to underline "Information" diagnostics
  DiagnosticUnderlineHint = { link = "LspDiagnosticsVirtualTextHint" }, -- Used to underline "Hint" diagnostics

  ["@lsp.type.class"] = { link = "Class" },
  ["@lsp.type.decorator"] = { link = "Function" },
  ["@lsp.type.enum"] = { link = "Type" },
  ["@lsp.type.enumMember"] = { link = "Constant" },
  ["@lsp.type.function"] = { link = "Function" },
  ["@lsp.type.interface"] = { link = "Type" },
  ["@lsp.type.macro"] = { link = "Macro" },
  ["@lsp.type.method"] = { link = "Function" },
  ["@lsp.type.namespace"] = { fg = C.syntax.field },
  ["@lsp.type.parameter"] = { fg = C.syntax.param },
  ["@lsp.type.property"] = { fg = C.syntax.field },
  ["@lsp.type.struct"] = { link = "Type" },
  ["@lsp.type.type"] = { link = "Type" },
  ["@lsp.type.typeParameter"] = { link = "Type" },
  ["@lsp.type.variable"] = { link = "Identifier" },
}
