local ls = require("luasnip")
local autosnippet = ls.extend_decorator.apply(s, { snippetType = "autosnippet" })
local in_mathzone = function()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
  autosnippet({ trig = ",a" }, { t("\\alpha") }, { condition = in_mathzone }),
  autosnippet({ trig = ",b" }, { t("\\beta") }, { condition = in_mathzone }),
  autosnippet({ trig = ",g" }, { t("\\gamma") }, { condition = in_mathzone }),
  autosnippet({ trig = ",G" }, { t("\\Gamma") }, { condition = in_mathzone }),
  autosnippet({ trig = ",d" }, { t("\\delta") }, { condition = in_mathzone }),
  autosnippet({ trig = ",D" }, { t("\\Delta") }, { condition = in_mathzone }),
  autosnippet({ trig = ",ep" }, { t("\\varepsilon") }, { condition = in_mathzone }),
  autosnippet({ trig = ",z" }, { t("\\zeta") }, { condition = in_mathzone }),
  autosnippet({ trig = ",et" }, { t("\\eta") }, { condition = in_mathzone }),
  autosnippet({ trig = ",th" }, { t("\\theta") }, { condition = in_mathzone }),
  autosnippet({ trig = ",Th" }, { t("\\Theta") }, { condition = in_mathzone }),
  autosnippet({ trig = ",i" }, { t("\\iota") }, { condition = in_mathzone }),
  autosnippet({ trig = ",l" }, { t("\\lambda") }, { condition = in_mathzone }),
  autosnippet({ trig = ",m" }, { t("\\mu") }, { condition = in_mathzone }),
  autosnippet({ trig = ",x" }, { t("\\xi") }, { condition = in_mathzone }),
  autosnippet({ trig = ",omi" }, { t("\\omi") }, { condition = in_mathzone }),
  autosnippet({ trig = ",Omi" }, { t("\\Omicron") }, { condition = in_mathzone }),
  autosnippet({ trig = ",pi" }, { t("\\pi") }, { condition = in_mathzone }),
  autosnippet({ trig = ",r" }, { t("\\rho") }, { condition = in_mathzone }),
  autosnippet({ trig = ",s" }, { t("\\sigma") }, { condition = in_mathzone }),
  autosnippet({ trig = ",S" }, { t("\\Sigma") }, { condition = in_mathzone }),
  autosnippet({ trig = ",ta" }, { t("\\tau") }, { condition = in_mathzone }),
  autosnippet({ trig = ",u" }, { t("\\upsilon") }, { condition = in_mathzone }),
  autosnippet({ trig = ",U" }, { t("\\Upsilon") }, { condition = in_mathzone }),
  autosnippet({ trig = ",vph" }, { t("\\varphi") }, { condition = in_mathzone }),
  autosnippet({ trig = ",ph" }, { t("\\phi") }, { condition = in_mathzone }),
  autosnippet({ trig = ",Ph" }, { t("\\Phi") }, { condition = in_mathzone }),
  autosnippet({ trig = ",c" }, { t("\\chi") }, { condition = in_mathzone }),
  autosnippet({ trig = ",ps" }, { t("\\psi") }, { condition = in_mathzone }),
  autosnippet({ trig = ",Ps" }, { t("\\Psi") }, { condition = in_mathzone }),
  autosnippet({ trig = ",ome" }, { t("\\omega") }, { condition = in_mathzone }),
  autosnippet({ trig = ",Ome" }, { t("\\Omega") }, { condition = in_mathzone }),
}
