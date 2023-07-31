return {
	-----------------------
	-- COMODITÀ GENERALI --
	-----------------------
	s(
		{ trig = "bold", dscr = "bold == \text{bf}" },
		fmt("\\textbf{<>}", {
			i(1),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "img", dscr = "per inserire immagini" },
		fmta(
			[[
        \begin{figure}[H]
          \centering
          \includegraphics[width=0.5\textwidth]{<><>}
        \end{figure}
        \noindent 
      ]],
			{
				i(1, "./images/"),
				i(2, "file.jpeg"),
			}
		)
	),
	s(
		{ trig = "enum", dscr = "enumerate pulito pulito" },
		fmta(
			[[
        \begin{enumerate}
          \item <>
        \end{enumerate}
      ]],
			{
				i(1),
			}
		)
	),
	s(
		{ trig = "itemi", dscr = "itemize pulito pulito" },
		fmta(
			[[
        \begin{itemize}
          \item <>
        \end{itemize}
      ]],
			{
				i(1),
			}
		)
	),
	s(
		{ trig = "item", dscr = "semplicemente per aggiungere un item" },
		fmt("\\item <>", {
			i(1),
		}, { delimiters = "<>" })
	),
	s({ trig = "dots", dscr = "Converte ... in \\dots" }, fmt("\\dots", {})),
	s(
		{ trig = "quotes", dscr = "Virgolette con il backtick senza tumore" },
		fmt("``<>''", {
			i(1),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "verb", dscr = "tipo se devi scrivere una directory" },
		fmt("\\verb|<>|", {
			i(1),
		}, { delimiters = "<>" })
	),
}
