\version "2.18"
\require "roman-numerals:.."

%% Display the available English notes.

\paper {
  markup-markup-spacing.basic-distance = 4
}

\markup \bold "LOWERCASE"

% remove quarter-tone accidentals
#(define note-list (remove (lambda (n) (string-contains n "q")) note-names))

\markup \wordwrap {
  #(map (lambda (n) #{ \markup \rN { #n } #}) note-list)
}

\markup \null

\markup \bold "UPPERCASE"

#(define capitalized-note-list (map (lambda (n) (string-upcase n 0 1)) note-list))

\markup \wordwrap {
  #(map (lambda (n) #{ \markup \rN { #n } #}) capitalized-note-list)
}
