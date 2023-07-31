return {

	--------------------------
	-- COMODITÀ MATEMATICHE --
	--------------------------

	s(
		{ trig = "ff", dscr = "Snippet per la frazione." },
		fmt("\\frac{<>}{<>}", {
			i(1, "num"),
			i(2, "den"),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "$$", "Spazio matematico" },
		fmta(
			[[
      \[
        <>
      \]
     ]],
			{
				i(1),
			}
		)
	),
	s(
		{ trig = "$", dscr = "Spazio inline matematico" },
		fmt("\\(<>\\)", {
			i(1),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "inf", dscr = "Infinito senza tumore" },
		fmt("<>\\infty", {
			i(1, "+"),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "lim", dscr = "Snippet per il limite." },
		fmt("\\lim_{<>\\to <>} <>", {
			i(1, "n"),
			i(2, "+\\infty"),
			i(3),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "int", dscr = "Snippet per l'integrale." },
		fmt("\\int_{<>}^{<>} <>", {
			i(1, "a"),
			i(2, "b"),
			i(0),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "abs", dscr = "Valore assoluto sempre della dimensione corretta." },
		fmt("\\left|<>\\right|", {
			i(1),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "sum", dscr = "Sommatoria" },
		fmt("\\sum_{<>=<>}^{<>} <>", {
			i(1, "n"),
			i(2, "0"),
			i(3, "+\\infty"),
			i(4),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "txt", dscr = "\text{...}" },
		fmt("\\text{<>}", {
			i(1),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = ";G", dscr = "Per 'esplicitare' le parentesi graffe" },
		fmt("\\{<>\\}", {
			i(1),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "underbrace", dscr = "graffona sotto" },
		fmt("\\underbrace{<>}_{<>}", {
			i(1, "contenuto"),
			i(2, "sotto"),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "overbrace", dscr = "graffona sopra" },
		fmt("\\overbrace{<>}_{<>}", {
			i(1, "contentuo"),
			i(2, "sopra"),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "overline", dscr = "overline" },
		fmt("\\overline{<>}", {
			i(1, "x"),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "pmatrix", dscr = "per creare una matrice con parentesi tonde" },
		fmta(
			[[
        \begin{pmatrix}
          \item <>
        \end{pmatrix}
      ]],
			{
				i(1),
			}
		)
	),
	s(
		{ trig = "eq", dscr = "Environment equazione" },
		fmta(
			[[
       \begin{equation*}
         <>
       \end{equation*}
     ]],
			{ i(1) }
		)
	),
	s(
		{ trig = "eqsp", "crea l'ambiente 'combo' equazione + split" },
		fmta(
			[[
      \begin{equation*}
        \begin{split}
          <>
        \end{split}
      \end{equation*}
     ]],
			{
				i(1),
			}
		)
	),
	s(
		{ trig = "cases", dscr = "Environment sistemi" },
		fmta(
			[[
       \begin{cases}
        <> &\text{se } <>
       \end{cases}
     ]],
			{ i(1), i(2) }
		)
	),
	s(
		{ trig = "sqrt", dscr = "radice quadrata" },
		fmt("\\sqrt{<>}", {
			i(1, "argomento"),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "root", dscr = "radice di indice n-esimo" },
		fmt("\\sqrt[<>]{<>}", {
			i(1, "indice"),
			i(2, "argomento"),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "__", dscr = "pedice" },
		fmt("{<>}_{<>}", {
			i(1),
			i(2),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "^", dscr = "elevazione" },
		fmt("{<>}^{<>}", {
			i(1),
			i(2),
		}, { delimiters = "<>" })
	),
	s(
		{ trig = "uset", dscr = "underset" },
		fmt("\\underset{<>}{<>}", {
			i(1, "sotto"),
			i(2, "sopra"),
		}, { delimiters = "<>" })
	),
	s({ trig = "implies", dscr = "Implicazione" }, fmt("\\implies", {})),
	s({ trig = "iff", dscr = "Se e solo se" }, fmt("\\iff", {})),
}
