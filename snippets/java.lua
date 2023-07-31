local ret_filename = function()
	return vim.fn.expand("%")
end

return {
	s(
		{ trig = "so", dscr = "Stampa senza andare a capo." },
		fmt(
			"System.out.print(<>);",
			{
				i(1),
			},
			{ delimiters = "<>" } -- manually specifying angle bracket delimiters
		)
	),
	s(
		{ trig = "sout", dscr = "Stampa e poi vai a capo." },
		fmt(
			"System.out.println(<>);",
			{
				i(1),
			},
			{ delimiters = "<>" } -- manually specifying angle bracket delimiters
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
