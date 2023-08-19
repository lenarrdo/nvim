local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {

  ---------------------------
  -- Per $ .. $ e \[ .. \] --
  ---------------------------

  s({trig = "mk", snippetType = "autosnippet"},
    fmta( "$<>$<>",
      {
        i(1),
        i(0),
      }
    )
  ),
  s({trig = "dm", snippetType = "autosnippet"},
    fmta(
			[[
      \[
        <>
      \]
      <>
     ]],
      {
        i(1),
        i(0),
      }
    ),
    {condition = line_begin}
  ),

  --------------
  -- Frazioni --
  --------------

  s({trig = "ff", snippetType = "autosnippet"},
    fmta(
      "\\frac{<>}{<>}",
      {
        i(1, "num"),
        i(2, "den"),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "(%w+)/",  dscr = "auto fraction", regTrig = true, hidden = true, snippetType = "autosnippet"},
    fmta(
      "\\frac{<>}{<>}<>",
      {
        f(function (_, snip)
          return snip.captures[1]
        end), i(1), i(0)
      }
    ),
    {condition = in_mathzone}
  ),

  ------------
  -- Pedici --
  ------------

  s({trig = "__", snippetType = "autosnippet"},
    fmta(
      "{<>}_{<>}",
      {
        i(1),
        i(2),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "(%w+)_",  dscr = "auto pedice", regTrig = true, hidden = true, snippetType = "autosnippet"},
    fmta(
      "{<>}_{<>}<>",
      {
        f(function (_, snip)
          return snip.captures[1]
        end), i(1), i(0)
      }
    ),
    {condition = in_mathzone}
  ),

  ----------------
  -- Elevamenti --
  ----------------

  s({trig = "^^", snippetType = "autosnippet"},
    fmta(
      "{<>}^{<>}",
      {
        i(1),
        i(2),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "(%w+)^",  dscr = "auto elevazione", regTrig = true, hidden = true, snippetType = "autosnippet"},
    fmta(
      "{<>}^{<>}<>",
      {
        f(function (_, snip)
          return snip.captures[1]
        end), i(1), i(0)
      }
    ),
    {condition = in_mathzone}
  ),

  ------------------------------------------------
  -- Parentesi e moduli della giusta dimensione --
  ------------------------------------------------

  s({trig = "lr|", snippetType = "autosnippet"},
    fmta(
      "\\left|<>\\right|",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "lr(", snippetType = "autosnippet"},
    fmta(
      "\\left(<>\\right)",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "lr[", snippetType = "autosnippet"},
    fmta(
      "\\left[<>\\right]",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "lr{", snippetType = "autosnippet"},
    fmta(
      "\\left\\{<>\\right\\}",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "lra", snippetType = "autosnippet"},
    fmta(
      "\\langle{<>}\\rangle",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),

  ----------------------------
  -- Funzioni Goniometriche --
  ----------------------------

  s({trig = "sin", snippetType = "autosnippet"},
    fmta(
      "\\sin(<>)",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "Sin", snippetType = "autosnippet"},
    fmta(
      "\\arcsin(<>)",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "cos", snippetType = "autosnippet"},
    fmta(
      "\\cos(<>)",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "Cos", snippetType = "autosnippet"},
    fmta(
      "\\arccos(<>)",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "tan", snippetType = "autosnippet"},
    fmta(
      "\\tan(<>)",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "Tan", snippetType = "autosnippet"},
    fmta(
      "\\arctan(<>)",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),

  ----------------------
  -- Operatori binari --
  ----------------------

  s({trig = ">=", snippetType = "autosnippet"},
    fmta(
      "\\ge", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "<=", snippetType = "autosnippet"},
    fmta(
      "\\le", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "!=", snippetType = "autosnippet"},
    fmta(
      "\\neq", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "equiv", snippetType = "autosnippet"},
    fmta(
      "\\equiv", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "~", snippetType = "autosnippet"},
    fmta(
      "\\sim", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "~=", snippetType = "autosnippet"},
    fmta(
      "\\simeq", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "~~", snippetType = "autosnippet"},
    fmta(
      "\\approx", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "cc", snippetType = "autosnippet"},
    fmta(
      "\\subset", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "cce", snippetType = "autosnippet"},
    fmta(
      "\\subseteq", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "inn", snippetType = "autosnippet"},
    fmta(
      "\\in", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "nin", snippetType = "autosnippet"},
    fmta(
      "\\notin", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "nni", snippetType = "autosnippet"},
    fmta(
      "\\ni", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "nn", snippetType = "autosnippet"},
    fmta(
      "\\cap", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "uu", snippetType = "autosnippet"},
    fmta(
      "\\cup", {}
    ),
    {condition = in_mathzone}
  ),

  ------------
  -- Frecce --
  ------------

  s({trig = "<-", snippetType = "autosnippet"},
    fmta(
      "\\leftarrow", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "->", snippetType = "autosnippet"},
    fmta(
      "\\to", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "=>", snippetType = "autosnippet"},
    fmta(
      "\\implies", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "<=", snippetType = "autosnippet"},
    fmta(
      "\\impliedby", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "iff", snippetType = "autosnippet"},
    fmta(
      "\\iff", {}
    ),
    {condition = in_mathzone}
  ),

  ---------------------------------------
  -- Integrali, limiti, logaritmi ecc. --
  ---------------------------------------

  s({trig = "lim", snippetType = "autosnippet"},
    fmta(
      "\\lim_{<>\\to <>} <>",
      {
        i(1, "n"),
        i(2, "+\\infty"),
        i(0),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "int", snippetType = "autosnippet"},
    fmta(
      "\\int_{<>}^{<>} <>",
      {
        i(1, "a"),
        i(2, "b"),
        i(0),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "sum", snippetType = "autosnippet"},
    fmta(
      "\\sum_{<>=<>}^{<>} <>",
      {
        i(1, "i"),
        i(2, "0"),
        i(3, "+\\infty"),
        i(0),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "log", snippetType = "autosnippet"},
    fmta(
      "\\log_{<>}(<>)",
      {
        i(1),
        i(2),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "ln", snippetType = "autosnippet"},
    fmta(
      "\\ln(<>)",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "oo", snippetType = "autosnippet"},
    fmta(
      "\\circ", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "**", snippetType = "autosnippet"},
    fmta(
      "\\cdot", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "xx", snippetType = "autosnippet"},
    fmta(
      "\\times", {}
    ),
    {condition = in_mathzone}
  ),

  -------------
  -- Simboli --
  -------------

  s({trig = "inf", snippetType = "autosnippet"},
    fmta(
      "\\infty", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "+-", snippetType = "autosnippet"},
    fmta(
      "\\pm", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "-+", snippetType = "autosnippet"},
    fmta(
      "\\mp", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "AA", snippetType = "autosnippet"},
    fmta(
      "\\forall", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "EE", snippetType = "autosnippet"},
    fmta(
      "\\exists", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "nEE", snippetType = "autosnippet"},
    fmta(
      "\\nexists", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "ll", snippetType = "autosnippet"},
    fmta(
      "\\ell", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = "OO", snippetType = "autosnippet"},
    fmta(
      "\\emptyset", {}
    ),
    {condition = in_mathzone}
  ),


  s({trig = "txt", snippetType = "autosnippet"},
    fmta(
      "\\text{<>}",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "ubra", snippetType = "autosnippet"},
    fmta(
      "\\underbrace{<>}_{<>}",
      {
        i(1, "contenuto"),
        i(2, "sotto"),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "obra", snippetType = "autosnippet"},
    fmta(
      "\\overbrace{<>}_{<>}",
      {
        i(1, "contenuto"),
        i(2, "sopra"),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "oli", snippetType = "autosnippet"},
    fmta(
      "\\overline{<>}",
      {
        i(1, "x"),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "uset", snippetType = "autosnippet"},
    fmta(
      "\\underset{<>}{<>}",
      {
        i(1, "sotto"),
        i(2, "sopra"),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "sq", snippetType = "autosnippet"},
    fmta(
      "\\sqrt{<>}",
      {
        i(1, "x"),
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "rt", snippetType = "autosnippet"},
    fmta(
      "\\sqrt[<>]{<>}",
      {
        i(1, "indice"),
        i(2, "argomento"),
      }
    ),
    {condition = in_mathzone}
  ),
}
