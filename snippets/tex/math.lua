local line_begin = require("luasnip.extras.expand_conditions").line_begin
local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
local in_text = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 0
end

return {
  -- inline/display math mode
  s({trig = "mk", snippetType = "autosnippet"},
    fmta(
      "\\(<>\\)<>",
      { i(1), i(0) }
    ),
    { condition = in_text}
  ),
  s({trig = "dm", snippetType = "autosnippet"},
    fmta(
      [[
        \[
          <>
        \]
      ]],
      { i(0) }
    ),
    {condition = in_text * line_begin}
  ),

  -- frazioni, pedici, apici
  s({trig = "ff", snippetType = "autosnippet"},
    fmta(
      "\\frac{<>}{<>}<>",
      { i(1, "num"), i(2, "den"), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "([%w+%)%]%}])_", regTrig = true, wordTrig = false, snippetType="autosnippet"},
    fmta(
      "<>_{<>}<>",
      { f( function(_, snip) return snip.captures[1] end ), i(1), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "([%w+%)%]%}])^", regTrig = true, wordTrig = false, snippetType="autosnippet"},
    fmta(
      "<>^{<>}<>",
      { f( function(_, snip) return snip.captures[1] end ), i(1), i(0) }
    ),
    {condition = in_mathzone}
  ),

  -- parentesi e moduli
  s({trig = "lrm", snippetType = "autosnippet"},
    fmta(
      "\\left|{<>}\\right|<>",
      { i(1), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "lrt", snippetType = "autosnippet"},
    fmta(
      "\\left({<>}\\right)<>",
      { i(1), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "lrq", snippetType = "autosnippet"},
    fmta(
      "\\left[{<>}\\right]<>",
      { i(1), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "lrg", snippetType = "autosnippet"},
    fmta(
      "\\left\\{{<>}\\right\\}<>",
      { i(1), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "lra", snippetType = "autosnippet"},
    fmta(
      "\\langle{<>}\\rangle<>",
      { i(1), i(0) }
    ),
    {condition = in_mathzone}
  ),

  -- funzioni goniometriche
  s({trig = "sin", snippetType="autosnippet"},
    {t("\\sin")}, {condition = in_mathzone}
  ),
  s({trig = "Sin", snippetType="autosnippet"},
    {t("\\arcsin")}, {condition = in_mathzone}
  ),
  s({trig = "cos", snippetType="autosnippet"},
    {t("\\cos")}, {condition = in_mathzone}
  ),
  s({trig = "Cos", snippetType="autosnippet"},
    {t("\\arccos")}, {condition = in_mathzone}
  ),
  s({trig = "tan", snippetType="autosnippet"},
    {t("\\tan")}, {condition = in_mathzone}
  ),
  s({trig = "Tan", snippetType="autosnippet"},
    {t("\\arctan")}, {condition = in_mathzone}
  ),

  -- operatori binari
  s({trig = "ge", snippetType="autosnippet"},
    {t("\\ge")}, {condition = in_mathzone}
  ),
  s({trig = "le", snippetType="autosnippet"},
    {t("\\le")}, {condition = in_mathzone}
  ),
  s({trig = "ne", snippetType="autosnippet"},
    {t("\\neq")}, {condition = in_mathzone}
  ),
  s({trig = "equiv", snippetType="autosnippet"},
    {t("\\equiv")}, {condition = in_mathzone}
  ),
  s({trig = "sim", snippetType="autosnippet"},
    {t("\\sim")}, {condition = in_mathzone}
  ),
  s({trig = "esim", snippetType="autosnippet"},
    {t("\\simeq")}, {condition = in_mathzone}
  ),
  s({trig = "app", snippetType="autosnippet"},
    {t("\\approx")}, {condition = in_mathzone}
  ),
  s({trig = "cc", snippetType="autosnippet"},
    {t("\\subset")}, {condition = in_mathzone}
  ),
  s({trig = "ecc", snippetType="autosnippet"},
    {t("\\subseteq")}, {condition = in_mathzone}
  ),
  s({trig = "inn", snippetType="autosnippet"},
    {t("\\in")}, {condition = in_mathzone}
  ),
  s({trig = "nin", snippetType="autosnippet"},
    {t("\\notin")}, {condition = in_mathzone}
  ),
  s({trig = "nni", snippetType="autosnippet"},
    {t("\\ni")}, {condition = in_mathzone}
  ),
  s({trig = "nn", snippetType="autosnippet"},
    {t("\\cap")}, {condition = in_mathzone}
  ),
  s({trig = "uu", snippetType="autosnippet"},
    {t("\\cup")}, {condition = in_mathzone}
  ),
  s({trig = "vv", snippetType="autosnippet"},
    {t("\\vee")}, {condition = in_mathzone}
  ),
  s({trig = "ww", snippetType="autosnippet"},
    {t("\\wedge")}, {condition = in_mathzone}
  ),
  s({trig = "oo", snippetType="autosnippet"},
    {t("\\circ")}, {condition = in_mathzone}
  ),
  s({trig = "**", snippetType="autosnippet"},
    {t("\\cdot")}, {condition = in_mathzone}
  ),
  s({trig = "xx", snippetType="autosnippet"},
    {t("\\times")}, {condition = in_mathzone}
  ),
  s({trig = "||", snippetType="autosnippet"},
    {t("\\mid")}, {condition = in_mathzone}
  ),
  s({trig = "tc", snippetType="autosnippet"},
    {t("\\tc")}, {condition = in_mathzone}
  ),

  -- frecce
  s({trig = "la", snippetType="autosnippet"},
    {t("\\gets")}, {condition = in_mathzone}
  ),
  s({trig = "ra", snippetType="autosnippet"},
    {t("\\to")}, {condition = in_mathzone}
  ),
  s({trig = "imp", snippetType="autosnippet"},
    {t("\\implies")}, {condition = in_mathzone}
  ),
  s({trig = "impby", snippetType="autosnippet"},
    {t("\\impliedby")}, {condition = in_mathzone}
  ),
  s({trig = "iff", snippetType="autosnippet"},
    {t("\\iff")}, {condition = in_mathzone}
  ),

  -- limiti, integrali, logaritmi...
  s({trig = "lim", snippetType = "autosnippet"},
    fmta(
      "\\lim_{<>\\to <>}<>",
      { i(1, "n"), i(2, "+\\infty"), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "int", snippetType = "autosnippet"},
    fmta(
      "\\int_{<>}^{<>}<>",
      { i(1, "a"), i(2, "b"), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "indint", snippetType="autosnippet"},
    {t("\\int")}, {condition = in_mathzone}
  ),
  s({trig = "df", snippetType="autosnippet"},
    {t("\\diff")}, {condition = in_mathzone}
  ),
  s({trig = "sum", snippetType = "autosnippet"},
    fmta(
      "\\sum_{<>=<>}^{<>}<>",
      { i(1, "i"), i(2, "0"), i(3, "+\\infty"), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "log", snippetType = "autosnippet"},
    fmta(
      "\\log_{<>}(<>)<>",
      { i(1), i(2), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "ln", snippetType = "autosnippet"},
    fmta(
      "\\ln(<>)<>",
      { i(1), i(0) }
    ),
    {condition = in_mathzone}
  ),

  -- simboli
  s({trig = "inf", snippetType="autosnippet"},
    {t("\\infty")}, {condition = in_mathzone}
  ),
  s({trig = "pm", snippetType="autosnippet"},
    {t("\\pm")}, {condition = in_mathzone}
  ),
  s({trig = "mp", snippetType="autosnippet"},
    {t("\\mp")}, {condition = in_mathzone}
  ),
  s({trig = "AA", snippetType="autosnippet"},
    {t("\\forall")}, {condition = in_mathzone}
  ),
  s({trig = "EE", snippetType="autosnippet"},
    {t("\\exists")}, {condition = in_mathzone}
  ),
  s({trig = "NEE", snippetType="autosnippet"},
    {t("\\nexists")}, {condition = in_mathzone}
  ),
  s({trig = "ll", snippetType="autosnippet"},
    {t("\\ell")}, {condition = in_mathzone}
  ),
  s({trig = "OO", snippetType="autosnippet"},
    {t("\\emptyset")}, {condition = in_mathzone}
  ),

  -- "environments"
  s({trig = "txt", snippetType = "autosnippet"},
    fmta(
      "\\text{<>}<>",
      { i(1), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "ubra", snippetType = "autosnippet"},
    fmta(
      "\\underbrace{<>}_{<>}<>",
      { i(1, "contenuto"), i(2, "sotto"), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "obra", snippetType = "autosnippet"},
    fmta(
      "\\overbrace{<>}_{<>}<>",
      { i(1, "contenuto"), i(2, "sopra"), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "oli", snippetType = "autosnippet"},
    fmta(
      "\\overline{<>}<>",
      { i(1, "x"), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "uset", snippetType = "autosnippet"},
    fmta(
      "\\underset{<>}{<>}<>",
      { i(1, "sotto"), i(2, "sopra"), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "sq", snippetType = "autosnippet"},
    fmta(
      "\\sqrt{<>}<>",
      { i(1, "x"), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "rt", snippetType = "autosnippet"},
    fmta(
      "\\sqrt[<>]{<>}<>",
      { i(1, "indice"), i(2, "argomento"), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "hat", snippetType = "autosnippet"},
    fmta(
      "\\hat{<>}<>",
      { i(1), i(0) }
    ),
    {condition = in_mathzone}
  ),

  -- fonts
  s({trig = "BB(%w+)", regTrig = true, hidden = true, snippetType = "autosnippet"},
    fmta(
      "\\mathbb{<>}<>",
      { f( function (_, snip) return snip.captures[1] end ), i(0) }
    ),
    {condition = in_mathzone}
  ),
  s({trig = "CAL(%w+)", regTrig = true, hidden = true, snippetType = "autosnippet"},
    fmta(
      "\\mathcal{<>}<>",
      { f( function (_, snip) return snip.captures[1] end ), i(0) }
    ),
    {condition = in_mathzone}
  ),
}
