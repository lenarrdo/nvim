local line_begin = require("luasnip.extras.expand_conditions").line_begin
local NIMandLB = function() -- Not In Mathzone and Line Begin
  return vim.fn['vimtex#syntax#in_mathzone']() == 0 and line_begin
end

return {
  s({trig = "env", snippetType = "autosnippet"},
    fmta(
			[[
       \begin{<>}
         <>
       \end{<>}
      ]],
      {
        i(1),
        i(0),
        rep(1),
      }
    ),
    {condition = line_begin}
  ),
  s({ trig = "fig", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{figure}[H]
          \centering
          \includegraphics[width=0.5\textwidth]{<>.drawio}
        \end{figure}
        \noindent <>
      ]],
      {
        i(1),
        i(0),
      }
    ),
    {condition = line_begin}
  ),
  s({ trig = "dfig", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{figure}[H]
          \centering
          \includegraphics[width=0.5\textwidth]{./figures/<>}
          \caption{<>}
          \label{<>}
        \end{figure}
        \noindent <>
      ]],
      {
        i(1, "file.jpeg"),
        i(2),
        i(3),
        i(0),
      }
    ),
    {condition = line_begin}
  ),
  s({trig = "cent", snippetType = "autosnippet"},
    fmta(
      [[
       \begin{center}
         <>
       \end{center}
       <>
      ]],
      {
        i(1),
        i(0),
      }
    ),
    {condition = line_begin}
  ),
  s({trig = ",e", snippetType = "autosnippet"},
    fmta(
    [[
      \begin{enumerate}
        \item <>
      \end{enumerate}
      <>
    ]],
    {
      i(1),
      i(0),
    }
    ),
    {condition = NIMandLB}
  ),
  s({trig = ",i", snippetType = "autosnippet"},
    fmta(
    [[
      \begin{itemize}
        \item <>
      \end{itemize}
      <>
    ]],
    {
      i(1),
      i(0),
    }
    ),
    {condition = NIMandLB}
  ),
  s({trig = "mini", snippetType = "autosnippet"},
    fmta(
      [[
       \begin{minipage}{0.5\textwidth}
         <>
       \end{minipage}
       <>
      ]],
      {
        i(1),
        i(0),
      }
    ),
    {condition = line_begin}
  ),
  s({trig = "pmat", snippetType = "autosnippet"},
    fmta(
      [[
        \begin{pmatrix}
          <>
        \end{pmatrix}
       <>
      ]],
      {
        i(1),
        i(0),
      }
    ),
    {condition = line_begin}
  ),
  s({trig = "equ", snippetType = "autosnippet"},
    fmta(
      [[
        \begin{equation}
          <>
        \end{equation}
       <>
      ]],
      {
        i(1),
        i(0),
      }
    ),
    {condition = line_begin}
  ),
  s({trig = "eqsp", snippetType = "autosnippet"},
    fmta(
      [[
      \begin{equation*}
        \begin{split}
          <>
        \end{split}
      \end{equation*}
       <>
      ]],
      {
        i(1),
        i(0),
      }
    ),
    {condition = line_begin}
  ),
  s({trig = "cases", snippetType = "autosnippet"},
    fmta(
      [[
       \begin{cases}
        <> & \text{se } <> \\
        <>
       \end{cases}
       <>
      ]],
      {
        i(1),
        i(2),
        i(3),
        i(0),
      }
    ),
    {condition = line_begin}
  ),
}
