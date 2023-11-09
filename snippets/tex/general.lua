local line_begin = require("luasnip.extras.expand_conditions").line_begin
local in_text = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 0
end

return {
  s({trig = ",b", snippetType = "autosnippet"},
    fmta(
      "\\textbf{<>}<>",
      { i(1), i(0) }
    ),
    {condition = in_text}
  ),
  s({trig = ".i", snippetType="autosnippet"},
    {t("\\item")}, {condition = in_text * line_begin}
  ),
  s({trig = "\"\"", snippetType = "autosnippet"},
    fmta(
      "``<>''<>",
      { i(1), i(0) }
    ),
    {condition = in_text}
  ),
  s({trig = ",v", snippetType = "autosnippet"},
    fmta(
      "\\verb|<>|<>",
      { i(1), i(0) }
    ),
    {condition = in_text}
  ),
  s({trig = ",c", snippetType = "autosnippet"},
    fmta(
      [[
        \chapter{<>}
        \thispagestyle{empty}<>
      ]],
      { i(1), i(0) }
    ),
    {condition = in_text * line_begin}
  ),
  s({trig = ",s", snippetType = "autosnippet"},
    fmta(
      [[
        \section{<>}<>
      ]],
      { i(1), i(0) }
    ),
    {condition = in_text * line_begin}
  ),
  s({trig = ".s", snippetType = "autosnippet"},
    fmta(
      [[
        \subsection{<>}<>
      ]],
      { i(1), i(0) }
    ),
    {condition = in_text * line_begin}
  ),
  s({trig = "-s", snippetType = "autosnippet"},
    fmta(
      [[
        \subsubsection{<>}<>
      ]],
      { i(1), i(0) }
    ),
    {condition = in_text * line_begin}
  ),
  s({trig = ",p", snippetType = "autosnippet"},
    fmta(
      [[
        \paragraph{<>}<>
      ]],
      { i(1), i(0) }
    ),
    {condition = in_text * line_begin}
  ),
}
