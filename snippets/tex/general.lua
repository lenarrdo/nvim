local ls = require("luasnip")
local autosnippet = ls.extend_decorator.apply(s, { snippetType = "autosnippet" })
local line_begin = require("luasnip.extras.expand_conditions").line_begin
local in_text = function()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 0
end

return {
  autosnippet({ trig = ",b" }, fmta("\\textbf{<>}<>", { i(1), i(0) }), { condition = in_text }),
  autosnippet({ trig = ".e" }, fmta("\\emph{<>}<>", { i(1), i(0) }), { condition = in_text }),
  autosnippet({ trig = ".i" }, { t("\\item") }, { condition = in_text * line_begin }),
  autosnippet({ trig = '""' }, fmta("``<>''<>", { i(1), i(0) }), { condition = in_text }),
  autosnippet({ trig = ",v" }, fmta("\\verb|<>|<>", { i(1), i(0) }), { condition = in_text }),
  autosnippet(
    { trig = ",c" },
    fmta(
      [[
        \chapter{<>}
        \thispagestyle{empty}<>
      ]],
      { i(1), i(0) }
    ),
    { condition = in_text * line_begin }
  ),
  autosnippet(
    { trig = ",s" },
    fmta(
      [[
        \section{<>}<>
      ]],
      { i(1), i(0) }
    ),
    { condition = in_text * line_begin }
  ),
  autosnippet(
    { trig = ".s" },
    fmta(
      [[
        \subsection{<>}<>
      ]],
      { i(1), i(0) }
    ),
    { condition = in_text * line_begin }
  ),
  autosnippet(
    { trig = "-s" },
    fmta(
      [[
        \subsubsection{<>}<>
      ]],
      { i(1), i(0) }
    ),
    { condition = in_text * line_begin }
  ),
  autosnippet(
    { trig = ",p" },
    fmta(
      [[
        \paragraph{<>}<>
      ]],
      { i(1), i(0) }
    ),
    { condition = in_text * line_begin }
  ),
  -- autosnippet(
  --     { trig = "NU" },
  --     fmta(
  --         [[
  --             \NULL{<>}<>
  --         ]],
  --         { i(1), i(0) }
  --     )
  -- ),
  -- autosnippet(
  --     { trig = "FI" },
  --     fmta(
  --         [[
  --             \FIRST{<>}<>
  --         ]],
  --         { i(1), i(0) }
  --     )
  -- ),
  -- autosnippet(
  --     { trig = "FO" },
  --     fmta(
  --         [[
  --             \FOLLOW{<>}<>
  --         ]],
  --         { i(1), i(0) }
  --     )
  -- ),
  -- autosnippet(
  --     { trig = "GU" },
  --     fmta(
  --         [[
  --             \GUIDA{<>}<>
  --         ]],
  --         { i(1), i(0) }
  --     )
  -- ),
  -- autosnippet(
  --     { trig = "no" },
  --     fmta(
  --         [[
  --             \node{<>}<>
  --         ]],
  --         { i(1), i(0) }
  --     )
  -- ),
  -- autosnippet(
  --     { trig = "qc" },
  --     fmta(
  --         [[
  --             \qcr{<>}<>
  --         ]],
  --         { i(1), i(0) }
  --     )
  -- ),
  -- autosnippet(
  --     { trig = "ta" },
  --     fmta(
  --         [[
  --             \tag{<>}<>
  --         ]],
  --         { i(1), i(0) }
  --     )
  -- ),
}
