﻿\version "2.14.2"

songTitle = "Angels, from the Realms of Glory"
songPoet = "James Montgomery (1771–1854)"
tuneComposer = "Henry Smart (1813–1879)"
tuneSource = \markup{from \italic {Christmas Carols and Hymns for School and Choir}, 1910}

%Angels From the Realms of Glory
global = {
    \key c \major
    \time 4/4
    %\override DynamicLineSpanner #'staff-padding = #0.0
    %\override DynamicLineSpanner #'Y-extent = #'(-1 . 1)
    \autoBeamOff
    \tempo 4 = 104
}

sopMusic = \relative c'' {
  \tempo 4 = 104
  g4 e c' g |
  e'4. d8 c4 g |
  a a g c |
  g f e2 | 
  
  g4 e c' g |
  e'4. d8 c4 b |
  c b a b8[ c] |
  b4 a g2 | 
  
  d'4. d8 b4 g |  
  e'4. d8 c4 a |
  f' e d c |
  c b c2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  e4 c g' e |
  g4. g8 g4 g |
  c, c c c |
  
  d b c2 |
  e4 c g' g8[ f] |
  e4. f8 e4 e |
  
  e e e e |
  g fis g2 |
  g4. g8 g4 g |
  
  g4. e8 f4 f |
  a g f e8[ f] |
  g4. f8 e2 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  An -- gels, from the realms of glo -- ry,
  Wing your flight o’er all the earth,
  \set associatedVoice = "basses"
  Ye, who sang cre -- a -- tion’s sto -- ry,
  \unset associatedVoice
  Now pro -- claim Mes -- si -- ah’s birth;
  Come and wor -- ship, come and wor -- ship,
  \set associatedVoice = "basses"
  Wor -- ship
  \set associatedVoice = "altos"
  Christ, the
  \unset associatedVoice
  new -- born King.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  Shep -- herds, in the field a -- bid -- ing, Watch -- ing o’er your flocks by night,
  \set associatedVoice = "basses"
  God with man is now re -- sid -- ing;
  \unset associatedVoice
  Yon -- der shines the in -- fant light;
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Sa -- ges, leave your con -- tem -- pla -- tions, Bright -- er vis -- ions beam a -- far;
  \set associatedVoice = "basses"
  Seek the great De -- sire of na -- tions,
  \unset associatedVoice
  Ye have seen His na -- tal star;
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Saints be -- fore the al -- tar bend -- ing,
    Watch -- ing long in hope and fear,
  \set associatedVoice = "basses"
  Sud -- den -- ly the Lord, de -- scend -- ing, 
  \unset associatedVoice
    In His tem -- ple shall ap -- pear;
}
tenorMusic = \relative c' {
  c4 g g c |
  c4. b8 c4 c |
  a c g a |
  
  g g g2 |
  c4 c g g |
  c4. b8 a4 gis |
  
  a gis e' d8[ c] |
  d4 c b2 |
  b4. b8 d4 b |
  
  c4. bes8 a4 c |
  d g, a8[ b] c4 |
  d4 d c2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  c4 c e c |
  g'4. f8 e4 e |
  f f e a, |
  
  b g c2 |
  c'4 g e e8[ d] |
  c4. d8 e4 e |
  
  a e c a |
  d d g,2 |
  g'4. g8 g4 g |
  
  c,4. c8 f4 f |
  d e f8[ g] a4 |
  g g, c2 \bar "|."
}

\bookpart { 
\header {
    title = \songTitle
    poet = \songPoet
    composer = \tuneComposer
    source = \tuneSource
  }
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \context Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \context Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \context Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \context Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5))} \lyricsto "sopranos" \altoWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
  >>
  >>
  \layout { }

    \midi {
        \set Staff.midiInstrument = "flute" 
        \context {
            \Staff \remove "Staff_performer"
        }
        \context {
            \Voice \consists "Staff_performer"
        }
    }
}
}

