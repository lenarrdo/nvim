return {

	------------------
	-- ENVIRONMENTS --
	------------------

	s(
		{ trig = "env", dscr = "Per creare un generico environment" },
		fmta(
			[[
       \begin{<>}
         <>
       \end{<>}
     ]],
			{
				i(1),
				i(2),
				rep(1),
			}
		)
	),
	s(
		{ trig = "center", dscr = "Environment testo centrato" },
		fmta(
			[[
       \begin{center}
         <>
       \end{center}
     ]],
			{ i(1) }
		)
	),
	s(
		{ trig = "chap", dscr = "Nuovo capitolo" },
		fmt("\\chapter{<>}", {
			i(1),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "sec", dscr = "Nuova sezione" },
		fmt("\\section{<>}", {
			i(1),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "ssec", dscr = "Nuova subsection" },
		fmt("\\subsection{<>}", {
			i(1),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "sssec", dscr = "Nuova subsubsection" },
		fmt("\\subsubsection{<>}", {
			i(1),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "par", dscr = "Nuovo paragrafo" },
		fmt("\\paragraph{<>}", {
			i(1),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "mini", dscr = "Environment minipage" },
		fmta(
			[[
       \begin{minipage}{0.5\textwidth}
         <>
       \end{minipage}
     ]],
			{ i(1) }
		)
	),
}
