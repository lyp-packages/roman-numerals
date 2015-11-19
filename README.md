Lilypond Roman numeral analysis tool
====================================

## What's this?

This tool provides a convenient method of creating Roman numerals for harmonic
analysis.  It works in conjunction with the program GNU LilyPond, which is
available for download [here](http://lilypond.org/download.html).

## How is it used?

To make this tool available to your LilyPond file, you can either copy the code
in `roman_numeral_analysis_tool.ily` directly into upit `ly` file, or you can add
`\include "roman_numeral_analysis_tool.ily"` to the head (assuming
that both files are in the same directory).  The two methods do the same thing,
but using `include` is a good way to keep your `.ly` file uncluttered.

Roman numerals may be created wherever markups are allowed.  When adding an
analysis to music, however, it is strongly recommended that you create your
analysis within a `Lyrics` context.

Symbols are created by the `rN` command, for which the syntax is as follows:

`\markup \rN { ...list of symbols... }`

Between the curly brackets, list the components of a single Roman numeral in
the following order (as needed): Roman numeral or note-name, quality, figured-
bass numbers from top to bottom, `/` (for a secondary function), tonicized
Roman numeral or note-name.  Usually, you can skip unnecessary items, though
including an empty string (`""`) as a spacer may be needed in some ambiguous
cases.

Preceding or following a symbol with English alterations
(`f`, `s`, `ff`, `ss`, `x`, `n`) will attach accidentals: `fVII` &#x2192;
"flat VII"; `svi` &#x2192; "sharp vi"; `Af` &#x2192; A-flat;
`As` &#x2192; A-sharp.

Qualities: use `o` for diminished, `h` for half-diminished,
`+` for augmented, `f` for flat; other indications are possible such as
combinations of `M` and `m` (`M`, `m`, `MM7`, `Mm`, `mm`, `Mmm9`, etc.);
`add`, `add6`, etc.

To scale all numerals: `\override LyricText #'font-size = #2`
or `\override TextScript #'font-size = #2`

To scale individual numerals:
`\markup \override #'(font-size . 2) \rN { ... }`

The file `example.ly` give an illustration of usage.
