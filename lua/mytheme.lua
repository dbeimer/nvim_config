require("github-theme").setup({
  transparent = true,
  keyword_style = "NONE",
  overrides = function(c)
    return {
      -- htmlTag = { fg = c.red, bg = "#282c34", sp = c.hint, style = "underline" },
      Identifier = {},
      -- DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
      -- this will remove the highlight groups
      TSField = {},
    }
  end
  -- dark_sidebar = false,
  -- colors = { hint = "orange", error = "#ff0000" },
  -- function_style = "italic"
})

-- vim.cmd("colorscheme github_dark")

require('colorbuddy').colorscheme('nord')
local Color, colors, Group, groups, styles = require('colorbuddy').setup()


Color.new('bey_white', '#D8DEE9')
Color.new('bey_green', '#00ff00')
-- Color.new('yellow', '#EBCB8B')
-- Color.new('aqua', '#A3BE8C')
-- Color.new('cyan', '#8FBCBB')
-- Color.new('violet', '#B48EAD')
-- Color.new('orange', '#ffffff')

-- Color.new('background', "#161b22")
-- Color.new('fg', "#ffffff")
-- Color.new('nord_0', "#2E3440")
Color.new('nord_1', "#3B4252")
Color.new('nord_2', "#434C5E")
Color.new('nord_3', "#4C566A")
Color.new('nord_3_light', "#616E88")
-- Color.new('nord_4', "#D8DEE9")
-- Color.new('nord_5', "#E5E9F0")
-- Color.new('nord_6', "#ECEFF4")
-- Color.new('nord_7', "#8FBCBB")
-- Color.new('nord_8', "#88C0D0")
-- Color.new('nord_9', "#81A1C1")
-- Color.new('nord_10', "#5E81AC")
-- Color.new('nord_11', "#BF616A")
-- Color.new('nord_12', "#D08770")
Color.new('nord_13', "#EBCB8B")
-- Color.new('nord_14', "#A3BE8C")
-- Color.new('nord_15', "#B48EAD")

Color.new('bey_blue', '#79c0ff')
Color.new('bey_red', '#ff7b72')
Color.new('bey_purple', '#d2a8ff')
Color.new('bey_sky', '#a5d6ff')
Color.new('bey_gray', '#8b949e')

Group.new("Operator", colors.bey_blue, colors.none, styles.NONE)
Group.new('Boolean', colors.bey_blue, colors.none, styles.NONE)
Group.new("Constant", colors.bey_blue, colors.none, styles.NONE) --para nulls
Group.new("Number", colors.bey_blue, colors.none, styles.NONE)
Group.new("Special", colors.bey_blue, colors.none, styles.NONE) --busquedas
Group.new("Keyword", colors.bey_red, colors.none, styles.NONE)
Group.new("String", colors.bey_sky, colors.none, styles.NONE)
Group.new("SpecialChar", colors.bey_sky, colors.none, styles.NONE) --regex dentro de strings
-- Group.new("Special", colors.bey_green, colors.none, styles.NONE) --busquedas
-- Group.new("Tag", colors.bey_green, colors.none, styles.NONE)
Group.new("Identifier", colors.bey_white, colors.none, styles.NONE)
Group.new('Function', colors.bey_purple, colors.none, styles.NONE)
Group.new('Comment', colors.bey_gray, colors.none, styles.italic)
Group.new("Type", colors.bey_red, colors.none, styles.NONE)
Group.new("Delimiter", colors.bey_white, colors.none, styles.NONE) --brackets,parentesis,etc
Group.new("Exception", colors.bey_red, colors.none, styles.NONE) --trycatch
Group.new("Conditional", colors.bey_red, colors.none, styles.NONE) --ifelse
Group.new("Repeat", colors.bey_red, colors.none, styles.NONE) --loops
Group.new("Todo", colors.nord_13, colors.none, styles.NONE) --todo commment

-- Color.new('seagreen', '#698b69')
-- Color.new('turquoise', '#698b69')


---- pum (popup menu)
-- Group.new('Pmenu', groups.Normal, colors.nord_2, styles.none) -- popup menu normal item
Group.new('PmenuSel', colors.bey_sky, colors.nord_3, styles.none) -- selected item
--Group.new('PmenuSbar', colors.base02, colors.none, styles.reverse)
--Group.new('PmenuThumb', colors.base0, colors.none, styles.reverse)

-- Group.new('Normal', colors.background, colors.none)

-- my highlight
-- Group.new('TabLineSel', colors.nord_0, colors.nord_9, styles.italic)
-- Group.new('TabLineSelSeparator', colors.nord_9, colors.nord_0)
-- Group.new('TabLine', colors.fg, colors.nord_2)
-- Group.new('TabLineSeparator', colors.nord_2, colors.fg)
-- Group.new('TabLineFill', colors.none, colors.none)

-- Group.new('Conceal', colors.bey_green, colors.none)
-- Group.new('VertSplit', colors.nord_3, colors.none)

-- Group.new('Error', colors.red, colors.none, styles.bold)
-- Group.new('ErrorMsg', colors.red, colors.nord_3, styles.bold)
-- Group.new('WarningMsg', colors.bey_green, colors.none, styles.bold)
-- Group.new('Character', colors.bey_green, colors.none, styles.NONE)
-- Group.new("Define", colors.bey_green, colors.none, styles.NONE)
-- Group.new("Float", colors.red, colors.none, styles.NONE)
-- Group.new("Include", colors.bey_green, colors.none, styles.NONE)
-- Group.new("Label", colors.bey_green, colors.none, styles.NONE)
-- Group.new("PreProc", colors.bey_green, colors.none, styles.NONE)
-- Group.new("SpecialComment", colors.bey_green, colors.none, styles.italic)
-- Group.new("Statement", colors.bey_green, colors.none, styles.NONE)
-- Group.new("StorageClass", colors.bey_green, colors.none, styles.NONE)
-- Group.new("Structure", colors.bey_green, colors.none, styles.NONE)
-- Group.new("Tag", colors.bey_green, colors.none, styles.NONE)
-- Group.new("Title", colors.bey_green, colors.none)
-- Group.new("Typedef", colors.bey_green, colors.none, styles.NONE)
-- Group.new("CursorColumn", colors.red, colors.none, styles.NONE)
-- Group.new("LineNr", colors.red, colors.none, styles.NONE)
-- Group.new("CursorLineNr", colors.red, colors.none, styles.NONE)
-- Group.new("Line", colors.red, colors.none, styles.bold)
-- Group.new("SignColumn", colors.none, colors.none, styles.NONE)
-- Group.new("StatusLine", colors.red, colors.nord_3, styles.NONE)

-- Group.new("ColorColumn", colors.none, colors.nord_1)
-- Group.new("Cursor", colors.nord_0, colors.nord_4)
-- Group.new("CursorLine", colors.none, colors.none)
-- Group.new("iCursor", colors.nord_0, colors.nord_4)
-- Group.new("EndOfBuffer", colors.none, colors.none)
-- Group.new("MatchParen", colors.nord_8, colors.nord_3)
-- Group.new("NonText", colors.none, colors.none)
-- Group.new("PMenu", colors.nord_4, colors.nord_2)
-- Group.new("PmenuSbar", colors.nord_4, colors.nord_2)
-- Group.new("PMenuSel", colors.nord_6, colors.nord_9)
-- Group.new("PmenuThumb", colors.nord_8, colors.nord_3)
Group.new("SpecialKey", colors.bey_green, colors.none)
-- Group.new("SpellBad", colors.nord_11, colors.nord_0)
-- Group.new("SpellCap", colors.nord_13, colors.nord_0)
-- Group.new("SpellLocal", colors.nord_5, colors.nord_0)
-- Group.new("SpellRare", colors.nord_6, colors.nord_0)
-- Group.new("Visual", colors.nord_4, colors.nord_9)
-- Group.new("VisualNOS", colors.nord_2, colors.nord_1)
-- Group.new("Folded", colors.nord_14, colors.none, styles.italic)

-- -- "+- Neovim Support -+
-- Group.new("healthError", colors.nord_11, colors.nord_1)
-- Group.new("healthSuccess", colors.nord_14, colors.nord_1)
-- Group.new("healthWarning", colors.bey_green, colors.bey_green)
-- Group.new("TermCursorNC", colors.nord_1, colors.nord_1)
-- Group.new("IncSearch", colors.nord_6, colors.nord_10, styles.underline)
-- Group.new("Search", colors.nord_1, colors.nord_8)

-- -- vim
-- Group.new('vimcommand', groups.Statement, colors.none)
-- Group.new('vimLet', groups.vimcommand, colors.none)
-- Group.new('vimFuncVar', groups.identifier, colors.none)
-- Group.new('vimCommentTitle', groups.PreProc, colors.none)
-- Group.new('vimIsCommand', colors.none, colors.none)
-- Group.new('vimFuncSID', groups.Special, colors.none)
-- Group.new('vimMapModKey', groups.vimFuncSID, colors.none)
-- Group.new('vimMapLhs', colors.none, colors.none)
-- Group.new('vimNotation', colors.nord_7, colors.none)
-- Group.new('vimBracket', groups.Delimiter, colors.none)
-- Group.new('vimMap', groups.vimcommand, colors.none)
-- Group.new('nvimMap', groups.vimMap, colors.none)

-- -- startify
-- Group.new("StartifyFile", colors.nord_6, colors.none)
-- Group.new("StartifyFooter", colors.none, colors.none)
-- Group.new("StartifyHeader", colors.nord_8, colors.none)
-- Group.new("StartifyNumber", colors.nord_7, colors.none)
-- Group.new("StartifyPath", colors.nord_8, colors.none)
-- Group.new("StartifyBracket", groups.Delimiter, groups.Delimiter)
-- Group.new("StartifySlash", groups.Normal, groups.Normal)
-- Group.new("StartifySpecial", groups.Comment, groups.Comment)

-- -- gitgutter
-- Group.new("GitGutterAdd", colors.nord_14, colors.none)
-- Group.new("GitGutterDelete", colors.nord_11, colors.none)
-- Group.new("GitGutterChange", colors.nord_13, colors.none)
-- Group.new("GitGutterChangeDelete", colors.nord_11, colors.none)

-- -- built-in LSP
-- Group.new("DiagnosticWarn", colors.bey_green, colors.none)
-- Group.new("DiagnosticError", colors.bey_green, colors.none)
-- Group.new("DiagnosticInfo", colors.bey_green, colors.none)
-- Group.new("DiagnosticHint", colors.nord_3, colors.none)

-- Group.new("LSPReferenceText", colors.none, colors.none)
-- Group.new("LSPReferenceRead", colors.none, colors.none, styles.bold)
-- Group.new("LSPReferenceWrite", colors.nord_9, colors.none, styles.bold)

-- -- Markdown
-- Group.new("markdownError", colors.nord_4, colors.none)

-- Group.new("CmpItemAbbr", colors.nord_4, colors.none)
-- Group.new("CmpItemKind", colors.nord_13, colors.none)
-- Group.new("CmpItemMenu", colors.nord_7, colors.none)
--
-- Color.new('base03', '#002b36')
-- Color.new('base02', '#073642')
-- Color.new('base01', '#586e75')
-- Color.new('base00', '#657b83')
-- Color.new('base0', '#839496')
-- Color.new('base1', '#93a1a1')
-- Color.new('base2', '#eee8d5')
-- Color.new('base3', '#fdf6e3')
-- Color.new('yellow', '#ffffff')
-- Color.new('orange', '#cb4b16')
-- Color.new('red', '#dc322f')
-- Color.new('magenta', '#d33682')
-- Color.new('violet', '#6c71c4')
-- Color.new('blue', '#ff0000')
-- Color.new('cyan', '#2aa198')
-- Color.new('green', '#719e07')

--Color.new('bg', colors.base03)
--Group.new('Error', colors.red)
--Group.new('Warning', colors.yellow)
--Group.new('Information', colors.blue)
--Group.new('Hint', colors.cyan)

---- normal non-current text
--Group.new('Normal', colors.base0, colors.NONE, styles.NONE)
--Group.new('NormalNC', colors.base0:dark(), colors.NONE, styles.NONE)

--Group.new('Constant', colors.cyan, colors.none, styles.NONE)
---- Any variable name, function or class name
--Group.new('Identifier', colors.blue, colors.none, styles.NONE)

---- any statement, conditional, repeat (for, do while), label, operator
--Group.new('Statement', colors.green, colors.none, styles.NONE)
--Group.new('PreProc', colors.orange, colors.none, styles.NONE)
--Group.new('Type', colors.yellow, colors.none, styles.NONE)
--Group.new('Special', colors.red, colors.none, styles.NONE)
--Group.new('Underlined', colors.violet, colors.none, styles.NONE)
--Group.new('Ignore', colors.none, colors.none, styles.NONE)
--Group.new('Error', colors.red, colors.none, styles.NONE)
--Group.new('TODO', colors.magenta, colors.none, styles.bold)

--Group.new('SpecialKey', colors.base00, colors.base02, styles.bold)
--Group.new('NonText', colors.base00, colors.NONE, styles.bold)
--Group.new('StatusLine', colors.base1, colors.base02, styles.reverse)
--Group.new('StatusLineNC', colors.base00, colors.base02, styles.reverse)
--Group.new('Visual', colors.base01, colors.base03, styles.reverse)
--Group.new('Directory', colors.blue, colors.none, styles.NONE)
--Group.new('ErrorMsg', colors.red, colors.none, styles.reverse)

--Group.new('IncSearch', colors.orange, colors.none, styles.standout)
--Group.new('Search', colors.yellow, colors.none, styles.reverse)

--Group.new('MoreMsg', colors.blue, colors.none, styles.NONE)
--Group.new('ModeMsg', colors.blue, colors.none, styles.NONE)
--Group.new('Question', colors.cyan, colors.none, styles.bold)
--Group.new('VertSplit', colors.base00, colors.none, styles.NONE)
--Group.new('Title', colors.orange, colors.none, styles.bold)
--Group.new('VisualNOS', colors.none, colors.base02, styles.reverse)
--Group.new('WarningMsg', colors.red, colors.none, styles.NONE)
--Group.new('WildMenu', colors.base2, colors.base02, styles.reverse)
--Group.new('Folded', colors.base0, colors.base02, styles.bold, colors.base03)
--Group.new('FoldColumn', colors.base0, colors.base02, styles.NONE)

--Group.new('DiffAdd', colors.green, colors.base02, styles.bold, colors.green)
--Group.new('DiffChange', colors.yellow, colors.base02, styles.bold, colors.yellow)
--Group.new('DiffDelete', colors.red, colors.base02, styles.bold)
--Group.new('DiffText', colors.blue, colors.base02, styles.bold, colors.blue)

--Group.new('SignColumn', colors.base0, colors.none, styles.NONE)
--Group.new('Conceal', colors.blue, colors.none, styles.NONE)

-- Group.new('SpellBad', colors.none, colors.none, styles.undercurl, colors.red)
-- Group.new('SpellCap', colors.none, colors.none, styles.undercurl, colors.violet)
-- Group.new('SpellRare', colors.none, colors.none, styles.undercurl, colors.cyan)
-- Group.new('SpellLocal', colors.none, colors.none, styles.undercurl, colors.yellow)


---- be nice for this float border to be cyan if active
--Group.new('FloatBorder', colors.base02)

--Group.new('TabLine', colors.base0, colors.base02, styles.NONE, colors.base0)
--Group.new('TabLineFill', colors.base0, colors.base02)
--Group.new('TabLineSel', colors.yellow, colors.bg)

--Group.new('LineNr', colors.base01, colors.none, styles.NONE)
--Group.new('CursorLine', colors.none, colors.base02, styles.NONE, colors.base1)
--Group.new('CursorLineNr', colors.none, colors.none, styles.NONE, colors.base1)
--Group.new('ColorColumn', colors.none, colors.base02, styles.NONE)
--Group.new('Cursor', colors.base03, colors.base0, styles.NONE)
--Group.link('lCursor', groups.Cursor)
--Group.link('TermCursor', groups.Cursor)
--Group.new('TermCursorNC', colors.base03, colors.base01)

--Group.new('MatchParen', colors.red, colors.base01, styles.bold)

--Group.new('GitGutterAdd', colors.green)
--Group.new('GitGutterChange', colors.yellow)
--Group.new('GitGutterDelete', colors.red)
--Group.new('GitGutterChangeDelete', colors.red)

--Group.new('GitSignsAddLn', colors.green)
--Group.new('GitSignsAddNr', colors.green)
--Group.new('GitSignsChangeLn', colors.yellow)
--Group.new('GitSignsChangeNr', colors.yellow)
--Group.new('GitSignsDeleteLn', colors.red)
--Group.new('GitSignsDeleteNr', colors.red)
--Group.link('GitSignsCurrentLineBlame', groups.Comment)

---- vim highlighting
--Group.link('vimVar', groups.Identifier)
--Group.link('vimFunc', groups.Identifier)
--Group.link('vimUserFunc', groups.Identifier)
--Group.link('helpSpecial', groups.Special)
--Group.link('vimSet', groups.Normal)
--Group.link('vimSetEqual', groups.Normal)
--Group.new('vimCommentString', colors.violet)
--Group.new('vimCommand', colors.yellow)
--Group.new('vimCmdSep', colors.blue, colors.NONE, styles.bold)
--Group.new('helpExample', colors.base1)
--Group.new('helpOption', colors.cyan)
--Group.new('helpNote', colors.magenta)
--Group.new('helpVim', colors.magenta)
--Group.new('helpHyperTextJump', colors.blue, colors.NONE, styles.underline)
--Group.new('helpHyperTextEntry', colors.green)
--Group.new('vimIsCommand', colors.base00)
--Group.new('vimSynMtchOpt', colors.yellow)
--Group.new('vimSynType', colors.cyan)
--Group.new('vimHiLink', colors.blue)
--Group.new('vimGroup', colors.blue, colors.NONE, styles.underline + styles.bold)

--Group.new('gitcommitSummary', colors.green)
--Group.new('gitcommitComment', colors.base01, colors.NONE, styles.italic)
--Group.link('gitcommitUntracked', groups.gitcommitComment)
--Group.link('gitcommitDiscarded', groups.gitcommitComment)
--Group.new('gitcommitSelected', groups.gitcommitComment)
--Group.new('gitcommitUnmerged', colors.green, colors.NONE, styles.bold)
--Group.new('gitcommitOnBranch', colors.base01, colors.NONE, styles.bold)
--Group.new('gitcommitBranch', colors.magenta, colors.NONE, styles.bold)
--Group.link('gitcommitNoBranch', groups.gitcommitBranch)
--Group.new('gitcommitDiscardedType', colors.red)
--Group.new('gitcommitSelectedType', colors.green)
--Group.new('gitcommitHeader', colors.base01)
--Group.new('gitcommitUntrackedFile', colors.cyan)
--Group.new('gitcommitDiscardedFile', colors.red)
--Group.new('gitcommitSelectedFile', colors.green)
--Group.new('gitcommitUnmergedFile', colors.yellow)
--Group.new('gitcommitFile', colors.base0)
--Group.link('gitcommitDiscardedArrow', groups.gitCommitDiscardedFile)
--Group.link('gitcommitSelectedArrow', groups.gitCommitSelectedFile)
--Group.link('gitcommitUnmergedArrow', groups.gitCommitUnmergedFile)

--Group.link('diffAdded', groups.Statement)
--Group.link('diffLine', groups.Identifier)

--Group.new('NeomakeErrorSign', colors.orange)
--Group.new('NeomakeWarningSign', colors.yellow)
--Group.new('NeomakeMessageSign', colors.cyan)
--Group.new('NeomakeNeomakeInfoSign', colors.green)

--Group.new('CmpItemKind', colors.green, colors.none, styles.none)
--Group.new('CmpItemMenu', groups.NormalNC, colors.bg, styles.none)
---- Group.new('CmpItemAbbr', colors.base0, colors.bg, styles.none)
---- Group.new('CmpItemAbbrMatch', colors.base0, colors.bg, styles.none)
--Group.new("CmpItemKindText", colors.base3, colors.none, styles.none)
--Group.new("CmpItemKindMethod", colors.green, colors.none, styles.none)
--Group.new("CmpItemKindFunction", colors.blue, colors.none, styles.none)
--Group.new("CmpItemKindConstructor", colors.orange, colors.none, styles.none)
--Group.new("CmpItemKindField", colors.yellow, colors.none, styles.none)
--Group.new("CmpItemKindVariable", colors.orange, colors.none, styles.none)
--Group.new("CmpitemKindClass", colors.yellow, colors.none, styles.none)
--Group.new("CmpItemKindInterface", colors.yellow, colors.none, styles.none)
--Group.new("CmpItemKindModule", colors.green, colors.none, styles.none)
--Group.new("CmpItemKindProperty", colors.green, colors.none, styles.none)
--Group.new("CmpItemKindUnit", colors.orange, colors.none, styles.none)
--Group.new("CmpItemKindValue", colors.cyan, colors.none, styles.none)
--Group.new("CmpItemKindEnum", colors.yellow, colors.none, styles.none)
--Group.new("CmpItemKindKeyword", colors.green, colors.none, styles.none)
--Group.new("CmpItemKindSnippet", colors.magenta, colors.none, styles.none)
--Group.new("CmpItemKindColor", colors.magenta, colors.none, styles.none)
--Group.new("CmpItemKindFile", colors.violet, colors.none, styles.none)
--Group.new("CmpItemKindReference", colors.violet, colors.none, styles.none)
--Group.new("CmpItemKindFolder", colors.violet, colors.none, styles.none)
--Group.new("CmpItemKindEnumMember", colors.cyan, colors.none, styles.none)
--Group.new("CmpItemKindConstant", colors.cyan, colors.none, styles.none)
--Group.new("CmpItemKindStruct", colors.yellow, colors.none, styles.none)
--Group.new("CmpItemKindEvent", colors.orange, colors.none, styles.none)
--Group.new("CmpItemKindOperator", colors.cyan, colors.none, styles.none)
--Group.new("CmpItemKindTypeParameter", colors.orange, colors.none, styles.none)

--Group.new('LspSagaCodeActionTitle', colors.green)
--Group.new('LspSagaBorderTitle', colors.yellow, colors.none, styles.bold)
--Group.new('LspSagaDiagnosticHeader', colors.yellow)
--Group.new('ProviderTruncateLine', colors.base02)
--Group.new('LspSagaShTruncateLine', groups.ProviderTruncateLine)
--Group.new('LspSagaDocTruncateLine', groups.ProviderTruncateLine)
--Group.new('LspSagaCodeActionTruncateLine', groups.ProviderTruncateLine)
--Group.new('LspSagaHoverBorder', colors.cyan)
--Group.new('LspSagaRenameBorder', groups.LspSagaHoverBorder)
--Group.new('LSPSagaDiagnosticBorder', groups.LspSagaHoverBorder)
--Group.new('LspSagaSignatureHelpBorder', groups.LspSagaHoverBorder)
--Group.new('LspSagaCodeActionBorder', groups.LspSagaHoverBorder)
--Group.new('LspSagaLspFinderBorder', groups.LspSagaHoverBorder)
--Group.new('LspSagaFloatWinBorder', groups.LspSagaHoverBorder)
--Group.new('LspSagaSignatureHelpBorder', groups.LspSagaHoverBorder)
--Group.new('LspSagaDefPreviewBorder', groups.LspSagaHoverBorder)
--Group.new('LspSagaAutoPreviewBorder', groups.LspSagaHoverBorder)
--Group.new('LspFloatWinBorder', groups.LspSagaHoverBorder)
--Group.new('LspLinesDiagBorder', groups.LspSagaHoverBorder)
--Group.new('LspSagaFinderSelection', colors.green, colors.none, styles.bold)
----Group.new('SagaShadow', colors.base02)

--Group.new('TelescopeMatching', colors.orange, groups.Special, groups.Special, groups.Special)
--Group.new('TelescopeBorder', colors.base01) -- float border not quite dark enough, maybe that needs to change?
--Group.new('TelescopePromptBorder', colors.cyan) -- active border lighter for clarity
--Group.new('TelescopeTitle', groups.Normal) -- separate them from the border a little, but not make them pop
--Group.new('TelescopePromptPrefix', groups.Normal) -- default is groups.Identifier
--Group.link('TelescopeSelection', groups.CursorLine)
--Group.new('TelescopeSelectionCaret', colors.cyan)


--Group.new('NeogitDiffAddHighlight', colors.blue, colors.red)
--Group.new('NeogitDiffDeleteHighlight', colors.blue, colors.red)
--Group.new('NeogitHunkHeader', groups.Normal, colors.base02)
--Group.new('NeogitHunkHeaderHighlight', groups.Normal, colors.red)
--Group.new('NeogitDiffContextHighlight', colors.base2, colors.base02)
--Group.new('NeogitCommandText', groups.Normal)
--Group.new('NeogitCommandTimeText', groups.Normal)
--Group.new('NeogitCommandCodeNormal', groups.Normal)
--Group.new('NeogitCommandCodeError', groups.Error)
--Group.new('NeogitNotificationError', groups.Error, colors.none)
--Group.new('NeogitNotificationInfo', groups.Information, colors.none)
--Group.new('NeogitNotificationWarning', groups.Warning, colors.none)
