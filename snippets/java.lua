return {
	s(
		{ trig = "so", dscr = "Stampa senza andare a capo." },
		fmt(
			"System.out.print(<>);",
			{
				i(1),
			},
			{ delimiters = "<>" }
		)
	),
	s(
		{ trig = "main", dscr = "public static void main(String[] args)" },
		fmta(
			[[
        public static void main(String[] args) {
          <>
        }
      ]],
			{
				i(1),
			}
		)
	),
}
