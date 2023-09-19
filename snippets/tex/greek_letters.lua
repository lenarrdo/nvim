local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {

  -- Alpha
  s({trig = ",a", snippetType = "autosnippet"},
    fmta(
      "\\alpha", {}
    ),
    {condition = in_mathzone}
  ),

  -- Beta
  s({trig = ",b", snippetType = "autosnippet"},
    fmta(
      "\\beta", {}
    ),
    {condition = in_mathzone}
  ),

  -- Gamma
  s({trig = ",g", snippetType = "autosnippet"},
    fmta(
      "\\gamma", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = ",G", snippetType = "autosnippet"},
    fmta(
      "\\Gamma", {}
    ),
    {condition = in_mathzone}
  ),

  -- Delta
  s({trig = ",d", snippetType = "autosnippet"},
    fmta(
      "\\delta", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = ",D", snippetType = "autosnippet"},
    fmta(
      "\\Delta", {}
    ),
    {condition = in_mathzone}
  ),

  -- Epsilon
  s({trig = ",ep", snippetType = "autosnippet"},
    fmta(
      "\\varepsilon", {}
    ),
    {condition = in_mathzone}
  ),

  -- Zeta
  s({trig = ",z", snippetType = "autosnippet"},
    fmta(
      "\\zeta", {}
    ),
    {condition = in_mathzone}
  ),

  -- Eta
  s({trig = ",et", snippetType = "autosnippet"},
    fmta(
      "\\eta", {}
    ),
    {condition = in_mathzone}
  ),

  -- Theta
  s({trig = ",th", snippetType = "autosnippet"},
    fmta(
      "\\theta", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = ",Th", snippetType = "autosnippet"},
    fmta(
      "\\Theta", {}
    ),
    {condition = in_mathzone}
  ),

  -- Iota
  s({trig = ",i", snippetType = "autosnippet"},
    fmta(
      "\\iota", {}
    ),
    {condition = in_mathzone}
  ),

  -- Lambda
  s({trig = ",l", snippetType = "autosnippet"},
    fmta(
      "\\lambda", {}
    ),
    {condition = in_mathzone}
  ),

  -- Mu
  s({trig = ",m", snippetType = "autosnippet"},
    fmta(
      "\\mu", {}
    ),
    {condition = in_mathzone}
  ),

  -- Xi
  s({trig = ",x", snippetType = "autosnippet"},
    fmta(
      "\\xi", {}
    ),
    {condition = in_mathzone}
  ),

  -- Omicron
  s({trig = ",omi", snippetType = "autosnippet"},
    fmta(
      "\\omicron", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = ",OMI", snippetType = "autosnippet"},
    fmta(
      "\\Omicron", {}
    ),
    {condition = in_mathzone}
  ),

  -- Pi
  s({trig = ",p", snippetType = "autosnippet"},
    fmta(
      "\\pi", {}
    ),
    {condition = in_mathzone}
  ),

  -- Rho
  s({trig = ",r", snippetType = "autosnippet"},
    fmta(
      "\\rho", {}
    ),
    {condition = in_mathzone}
  ),

  --Sigma
  s({trig = ",s", snippetType = "autosnippet"},
    fmta(
      "\\sigma", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = ",S", snippetType = "autosnippet"},
    fmta(
      "\\Sigma", {}
    ),
    {condition = in_mathzone}
  ),

  -- Tau
  s({trig = ",ta", snippetType = "autosnippet"},
    fmta(
      "\\tau", {}
    ),
    {condition = in_mathzone}
  ),

  -- Upsilon
  s({trig = ",u", snippetType = "autosnippet"},
    fmta(
      "\\upsilon", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = ",U", snippetType = "autosnippet"},
    fmta(
      "\\Upsilon", {}
    ),
    {condition = in_mathzone}
  ),

  -- Phi
  s({trig = ",ph", snippetType = "autosnippet"},
    fmta(
      "\\phi", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = ",vph", snippetType = "autosnippet"},
    fmta(
      "\\varphi", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = ",Ph", snippetType = "autosnippet"},
    fmta(
      "\\Phi", {}
    ),
    {condition = in_mathzone}
  ),

  -- Chi
  s({trig = ",c", snippetType = "autosnippet"},
    fmta(
      "\\chi", {}
    ),
    {condition = in_mathzone}
  ),

  -- Psi
  s({trig = ",ps", snippetType = "autosnippet"},
    fmta(
      "\\psi", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = ",Ps", snippetType = "autosnippet"},
    fmta(
      "\\Psi", {}
    ),
    {condition = in_mathzone}
  ),

  -- Omega
  s({trig = ",ome", snippetType = "autosnippet"},
    fmta(
      "\\omega", {}
    ),
    {condition = in_mathzone}
  ),
  s({trig = ",OME", snippetType = "autosnippet"},
    fmta(
      "\\Omega", {}
    ),
    {condition = in_mathzone}
  ),
}
