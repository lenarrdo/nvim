local ls = require("luasnip")
local autosnippet = ls.extend_decorator.apply(s, { snippetType = "autosnippet" })
local line_begin = require("luasnip.extras.expand_conditions").line_begin
local in_text = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 0
end

return {
  autosnippet({trig = "env"},
    fmta(
      [[
       \begin{<>}
         <>
       \end{<>}
      ]],
      { i(1), i(0), rep(1) }
    ),
    {condition = in_text * line_begin}
  ),
  autosnippet({trig = "fig"},
    fmta(
      [[
        \begin{figure}[H]
          \centering
          \includegraphics[width=0.5\textwidth]{<>.drawio}
        \end{figure}
        \noindent <>
      ]],
      { i(1), i(0) }
    ),
    {condition = in_text * line_begin}
  ),
  autosnippet({trig = "dfig"},
    fmta(
      [[
        \begin{figure}[H]
          \centering
          \includegraphics[width=0.5\textwidth]{<>.drawio}
          \caption{<>}
          \label{fig:<>}
        \end{figure}
        \noindent <>
      ]],
      { i(1), i(2), rep(1), i(0) }
    ),
    {condition = in_text * line_begin}
  ),
  autosnippet({trig = "cent"},
    fmta(
      [[
       \begin{center}
         <>
       \end{center}
      ]],
      { i(0) }
    ),
    {condition = in_text * line_begin}
  ),
  autosnippet({trig = ",e"},
    fmta(
    [[
      \begin{enumerate}
        \item <>
      \end{enumerate}
    ]],
    { i(0) }
    ),
    {condition = in_text * line_begin}
  ),
  autosnippet({trig = ",i"},
    fmta(
    [[
      \begin{itemize}
        \item <>
      \end{itemize}
    ]],
    { i(0) }
    ),
    {condition = in_text * line_begin}
  ),
  autosnippet({trig = "mini"},
    fmta(
      [[
       \begin{minipage}{0.5\textwidth}
         <>
       \end{minipage}
      ]],
      { i(0) }
    ),
    {condition = in_text * line_begin}
  ),
}
