﻿\version "2.14.2"

\header {
    title = "Creator of the Stars of Night"
    poet = "Translated by John Mason Neale (1818–1866)"
    %source = \markup { from \italic {Peters’ Sodality Hymn Book,} 1914}
  }

global = {
    \key f \major
    \time 6/8
    \autoBeamOff
    %\set Score.timing = ##f
    \tempo 4 = 120
}

sopMusic = \relative c'' {
  \repeat volta 2 {
    a4 f a
    c c d bes
    c \bar "|"
    c d bes
    c bes a g
    a\fermata \bar "|"
    
    c bes g 
    a bes  a g
    f \bar "|"
    f a bes
    c bes a g
    a\fermata
  }
}
sopAmen = \relative c'' {
  a4( bes a) g2( a) \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  f4 f f
  f f f d
  f
  a f d
  e d f e
  f \bar "|"
  
  a g e
  f g f e
  d
  d f g
  a g f e
  f
}
altoAmen = \relative c' {
  f2. e2( f)
}
altoWords = \lyricmode {
  
  \set stanza = #"1."
  Cre -- a -- tor of the stars of night,
  Thy peo -- ple’s ev -- er -- last -- ing Light;
  Je -- su, Re -- deem -- er, save us all,
  And hear thy ser -- vants when they call.

  \set stanza = #"4."
  At Whose dread Name, ma -- jes -- tic now,
  All knees must bend, all hearts must bow;
  And things ce -- les -- tial Thee shall own,
  And things ter -- res -- trial, Lord a -- lone.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2."
  Thou, griev -- ing that the an -- cient curse
  Should doom to death a u -- ni -- verse,
  Hast found the med -- ’cine, full of grace,
  To save and heal a ru -- in’d race.
  
  \set stanza = #" 5."
  O Thou, Whose com -- ing is with dread
  To judge and doom the quick and dead,
  Pre -- serve us, while we dwell be -- low,
  From ev -- ’ry in -- sult of the foe.

  A -- men.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3."
  Thou cam’st, the Bride -- groom of the bride,
  As drew the world to eve -- ning -- tide;
  Pro -- ceed -- ing from a vir -- gin shrine,
  The spot -- less Vic -- tim all di -- vine.

  \set stanza = #" 6."
  To God the Fa -- ther, God the Son,
  And God the Spi -- rit, Three in One,
  Laud, hon -- or, might, and glo -- ry be
  From age to age e -- ter -- nal -- ly.
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
  \set ignoreMelismata = ##t
}
altoWordsV = \lyricmode {
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  c4 a c
  a a bes g
  a
  c bes bes
  c bes c c
  c \bar "|"
  
  c c c
  c d c bes
  a
  a c bes
  a g a c
  c
}
tenorAmen = \relative c' {
  c2. c1
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  f4 f f
  f f bes, g'
  f
  f bes, bes
  c bes c c
  f\fermata \bar "|"
  
  f c c
  f g c, c
  d
  d c bes
  f g d' c
  f\fermata
}
bassAmen = \relative c {
  f2. c2( f)
}

\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global {\repeat unfold2 \sopMusic \sopAmen}>> }
      \new Voice = "altos" { \voiceTwo << \global {\repeat unfold2 \altoMusic \altoAmen} >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5))} \lyricsto "altos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global {\repeat unfold2  \tenorMusic \tenorAmen} >> }
      \new Voice = "basses" { \voiceTwo << \global {\repeat unfold2 \bassMusic \bassAmen} >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
  >>
  >>
  \layout {
    \context {
      % Remove all empty staves
      \Staff
      \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
      \remove "Time_signature_engraver"
    }
  }
  
  \midi {
    \set Staff.midiInstrument = "flute"
  
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

