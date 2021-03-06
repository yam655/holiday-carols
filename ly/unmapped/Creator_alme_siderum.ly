﻿\version "2.14.2"

songTitle = "Creator alme siderum"
songSubtitle = \markup \null % "(Vesper Hymn for Sundays in Advent)"
songSection = "Advent"
tuneSource = \markup { from \italic {Peters’ Sodality Hymn Book,} 1914}

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
    a bes a g
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
  Cre -- á -- tor al -- me sí -- de -- rum,
  Æ -- tér -- na lux cre -- dén -- ti -- um,
  Je -- su, Re -- dém -- ptor óm -- ni -- um,
  In -- tén -- de vo -- tis súp -- pli -- cum.

  \set stanza = #"4."
  Cu -- jus po -- té -- stas gló -- ri -- æ,
  No -- mén -- que cum pri -- mum so -- nat,
  Et cæ -- li -- tes et ín -- fe -- ri
  Tre -- mén -- te cur -- ván -- tur ge -- nu.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2."
  Qui dæ -- mo -- nis ne fráu -- di -- bus
  Per -- í -- ret or -- bis, ím -- pe -- tu
  A -- mó -- ris ac -- tus, lán -- gui -- di
  Mun -- di me -- dé -- la fac -- tus es.

  \set stanza = #" 5."
  Te de -- pre -- cá -- mur úl -- ti -- mæ
  Ma -- gnum di -- é -- i Jú -- di -- cem,
  Ar -- mis su -- pér -- næ grá -- ti -- æ
  De -- fén -- de nos ab hó -- sti -- bus.

  A -- men.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3."
  Com -- mú -- ne qui mun -- di ne -- fas
  Ut ex -- pi -- á -- res, ad cru -- cem
  E Vír -- gi -- nis sa -- crá -- ri -- o
  In -- tác -- ta pro -- dis víc -- ti -- ma.

  \set stanza = #" 6."
  Vir -- tus, ho -- nor, laus, gló -- ri -- a
  De -- o Pa -- tri cum Fí -- li -- o,
  San -- cto si -- mul Pa -- rá -- cli -- to,
  In sæ -- cu -- ló -- rum sæ -- cu -- la.
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
\header {
    title = \songTitle 
    subtitle = \songSubtitle
    section = \songSection 
    source = \tuneSource 
}

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

