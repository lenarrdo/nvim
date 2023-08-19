return {
  s({ trig = "so" },
    fmta(
      "System.out.print(<>);",
      {
        i(1),
      }
    )
  ),
  s({ trig = "main" },
    fmta(
    [[
      public static void main(String[] args) {
        <>
      }
    ]],
      {
        i(0),
      }
    )
  ),
}
