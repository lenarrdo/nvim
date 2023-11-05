local line_begin = require("luasnip.extras.expand_conditions").line_begin
local in_text = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 0
end

return {
  s({trig = "env", snippetType = "autosnippet"},
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
  s({trig = "fig", snippetType = "autosnippet"},
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
  s({trig = "dfig", snippetType = "autosnippet"},
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
  s({trig = "cent", snippetType = "autosnippet"},
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
  s({trig = ",e", snippetType = "autosnippet"},
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
  s({trig = ",i", snippetType = "autosnippet"},
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
  s({trig = "mini", snippetType = "autosnippet"},
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
  s({trig = "pmat", snippetType = "autosnippet"},
    fmta(
      [[
        \begin{pmatrix}
          <>
        \end{pmatrix}
      ]],
      { i(0) }
    ),
    {condition = in_text * line_begin}
  ),
  s({trig = "equ", snippetType = "autosnippet"},
    fmta(
      [[
        \begin{equation}
          <>
        \end{equation}
      ]],
      { i(0) }
    ),
    {condition = in_text * line_begin}
  ),
  s({trig = "eqsp", snippetType = "autosnippet"},
    fmta(
      [[
      \begin{equation*}
        \begin{split}
          <>
        \end{split}
      \end{equation*}
      ]],
      { i(0) }
    ),
    {condition = in_text * line_begin}
  ),
  s({trig = "cases", snippetType = "autosnippet"},
    fmta(
      [[
       \begin{cases}
        <> & \text{se } <> \\
        <>
       \end{cases}
      ]],
      { i(1), i(2), i(0) }
    ),
    {condition = in_text * line_begin}
  ),
}
