local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  s({trig = ",a", snippetType="autosnippet"},
    {t("\\alpha")}, {condition = in_mathzone}
  ),
  s({trig = ",b", snippetType="autosnippet"},
    {t("\\beta")}, {condition = in_mathzone}
  ),
  s({trig = ",g", snippetType="autosnippet"},
    {t("\\gamma")}, {condition = in_mathzone}
  ),
  s({trig = ",G", snippetType="autosnippet"},
    {t("\\Gamma")}, {condition = in_mathzone}
  ),
  s({trig = ",d", snippetType="autosnippet"},
    {t("\\delta")}, {condition = in_mathzone}
  ),
  s({trig = ",D", snippetType="autosnippet"},
    {t("\\Delta")}, {condition = in_mathzone}
  ),
  s({trig = ",ep", snippetType="autosnippet"},
    {t("\\varepsilon")}, {condition = in_mathzone}
  ),
  s({trig = ",z", snippetType="autosnippet"},
    {t("\\zeta")}, {condition = in_mathzone}
  ),
  s({trig = ",et", snippetType="autosnippet"},
    {t("\\eta")}, {condition = in_mathzone}
  ),
  s({trig = ",th", snippetType="autosnippet"},
    {t("\\theta")}, {condition = in_mathzone}
  ),
  s({trig = ",Th", snippetType="autosnippet"},
    {t("\\Theta")}, {condition = in_mathzone}
  ),
  s({trig = ",i", snippetType="autosnippet"},
    {t("\\iota")}, {condition = in_mathzone}
  ),
  s({trig = ",l", snippetType="autosnippet"},
    {t("\\lambda")}, {condition = in_mathzone}
  ),
  s({trig = ",m", snippetType="autosnippet"},
    {t("\\mu")}, {condition = in_mathzone}
  ),
  s({trig = ",x", snippetType="autosnippet"},
    {t("\\xi")}, {condition = in_mathzone}
  ),
  s({trig = ",omi", snippetType="autosnippet"},
    {t("\\omi")}, {condition = in_mathzone}
  ),
  s({trig = ",Omi", snippetType="autosnippet"},
    {t("\\Omicron")}, {condition = in_mathzone}
  ),
  s({trig = ",pi", snippetType="autosnippet"},
    {t("\\pi")}, {condition = in_mathzone}
  ),
  s({trig = ",r", snippetType="autosnippet"},
    {t("\\rho")}, {condition = in_mathzone}
  ),
  s({trig = ",s", snippetType="autosnippet"},
    {t("\\sigma")}, {condition = in_mathzone}
  ),
  s({trig = ",S", snippetType="autosnippet"},
    {t("\\Sigma")}, {condition = in_mathzone}
  ),
  s({trig = ",ta", snippetType="autosnippet"},
    {t("\\tau")}, {condition = in_mathzone}
  ),
  s({trig = ",u", snippetType="autosnippet"},
    {t("\\upsilon")}, {condition = in_mathzone}
  ),
  s({trig = ",U", snippetType="autosnippet"},
    {t("\\Upsilon")}, {condition = in_mathzone}
  ),
  s({trig = ",vph", snippetType="autosnippet"},
    {t("\\varphi")}, {condition = in_mathzone}
  ),
  s({trig = ",ph", snippetType="autosnippet"},
    {t("\\phi")}, {condition = in_mathzone}
  ),
  s({trig = ",Ph", snippetType="autosnippet"},
    {t("\\Phi")}, {condition = in_mathzone}
  ),
  s({trig = ",c", snippetType="autosnippet"},
    {t("\\chi")}, {condition = in_mathzone}
  ),
  s({trig = ",ps", snippetType="autosnippet"},
    {t("\\psi")}, {condition = in_mathzone}
  ),
  s({trig = ",Ps", snippetType="autosnippet"},
    {t("\\Psi")}, {condition = in_mathzone}
  ),
  s({trig = ",ome", snippetType="autosnippet"},
    {t("\\omega")}, {condition = in_mathzone}
  ),
  s({trig = ",Ome", snippetType="autosnippet"},
    {t("\\Omega")}, {condition = in_mathzone}
  ),
}
