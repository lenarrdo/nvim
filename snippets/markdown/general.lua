local ls = require("luasnip")
local autosnippet = ls.extend_decorator.apply(s, { snippetType = "autosnippet" })
local line_begin = require("luasnip.extras.expand_conditions").line_begin
local in_text = function()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 0
end

return {
  autosnippet({ trig = ",b" }, fmta("**<>**<>", { i(1), i(0) }), { condition = in_text }),
  autosnippet({ trig = ",s" }, fmta("~~<>~~<>", { i(1), i(0) }), { condition = in_text }),

  autosnippet({ trig = "1#" }, fmta("# <>", { i(0) }), { condition = in_text }),
  autosnippet({ trig = "2#" }, fmta("## <>", { i(0) }), { condition = in_text }),
  autosnippet({ trig = "3#" }, fmta("### <>", { i(0) }), { condition = in_text }),
  autosnippet({ trig = "4#" }, fmta("#### <>", { i(0) }), { condition = in_text }),
  autosnippet({ trig = "5#" }, fmta("##### <>", { i(0) }), { condition = in_text }),
  autosnippet({ trig = "6#" }, fmta("###### <>", { i(0) }), { condition = in_text }),
  autosnippet(
    { trig = ",l" },
    fmta("[<>](<>)<>", { i(1, "nome"), i(2, "URL"), i(0) }),
    { condition = in_text }
  ),
  autosnippet(
    { trig = ",f" },
    fmta("![<>](<>)<>", { i(1, "nome"), i(2, "path"), i(0) }),
    { condition = in_text }
  ),
  autosnippet(
    { trig = ",q" },
    fmta(
      [[
        > ()

        ()
      ]],
      { i(1, "lang"), i(0) },
      { delimiters = "()" }
    ),
    { condition = in_text }
  ),
  autosnippet(
    { trig = ",c" },
    fmta(
      [[
        ```<>
        <>
        ```<>
      ]],
      { i(1, "lang"), i(2), i(0) }
    ),
    { condition = in_text * line_begin }
  ),
}
