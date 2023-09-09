line_begin = function ()
  local lb = require("luasnip.extras.expand_conditions").line_begin
  return lb == 1
end
local not_in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 0
end
local NIMandLB = function() -- Not In Mathzone and Line Begin
  return not_in_mathzone and line_begin
end

return {
  s({trig = ",b", snippetType = "autosnippet"},
    fmta(
      "\\textbf{<>}",
      {
        i(1),
      }
    ),
    {condition = not_in_mathzone}
  ),
  s({trig = ".i", snippetType = "autosnippet"},
    fmta(
      "\\item <>",
      {
        i(0),
      }
    ),
    {condition = line_begin}
  ),
  s({trig = "\"\"", snippetType = "autosnippet"},
    fmta(
      "``<>''",
      {
        i(1),
      }
    )
  ),
  s({trig = ",v", snippetType = "autosnippet"},
    fmta(
      "\\verb|<>|",
      {
        i(1),
      }
    ),
    {condition = not_in_mathzone}
  ),
  s({trig = ",c", snippetType = "autosnippet"},
    fmta(
			[[
        \chapter{<>}
        <>
      ]],
      {
        i(1),
        i(0),
      }
    ),
    {condition = NIMandLB}
  ),
  s({trig = ",s", snippetType = "autosnippet"},
    fmta(
			[[
        \section{<>}
        <>
      ]],
      {
        i(1),
        i(0),
      }
    ),
    {condition = NIMandLB}
  ),
  s({trig = ".s", snippetType = "autosnippet"},
    fmta(
			[[
        \subsection{<>}
        <>
      ]],
      {
        i(1),
        i(0),
      }
    ),
    {condition = NIMandLB}
  ),
  s({trig = "-s", snippetType = "autosnippet"},
    fmta(
			[[
        \subsubsection{<>}
        <>
      ]],
      {
        i(1),
        i(0),
      }
    ),
    {condition = NIMandLB}
  ),
  s({trig = ",p", snippetType = "autosnippet"},
    fmta(
			[[
        \paragraph{<>}
        <>
      ]],
      {
        i(1),
        i(0),
      }
    ),
    {condition = NIMandLB}
  ),
}
