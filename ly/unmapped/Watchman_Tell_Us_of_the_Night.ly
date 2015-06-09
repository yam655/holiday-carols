﻿\version "2.14.2"
\include "util.ly"
\header {
  title = "Watchman, Tell Us of the Night"
  poet = "John Bowring (1792–1872)"
  composer = \markup{\italic {Aberystwyth}, Joseph Parry (1841–1903)}
  %tagline = \markup { "from" \italic {ChristmasCarolMusic.org}}
}

global = {
  \key f \major
  \time 4/4
  \autoBeamOff
  \tempo 4 = 90
  %\override DynamicLineSpanner #'staff-padding = #0.0
  %\override DynamicLineSpanner #'Y-extent = #'(-1 . 1)
}

sopMusic = \relative c' {
  d4 d8[ e] f[ g] a4 |
  f e d2 |
  f4 e d cis |
  d8[ e] f4 e2 | \break
  
  d4 d8[ e] f[ g] a4 |
  f e d2 |
  e4 f8[ g] a4 g |
  f e d2 | \break
  
  d4 c d e |
  f a8[ g] f2 |
  f4 e f g |
  a c8[ b] a2 | \break
  
  d4 d c a |
  f g a2 |
  d,4 d8[ e] f[ g] a4 |
  f e d2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  a4 d8[ cis] d[ e] f4 |
  d cis a2 |
  d4 cis d a |
  a d cis2 |
  
  a4 a8[ cis] d[ e] f4 |
  d cis a2 |
  cis4 d8[ e] f4 e |
  d cis a2 |
  
  bes4 a bes bes |
  c e c2 |
  d4 cis d e8[ c] |
  c4 e8[ d] c2 |
  
  d4 f8[ e] f4 c |
  d d e2 |
  d4 d8[ cis] d[ e] f4 |
  d cis a2 \bar "|."
}
altoWords = \lyricmode {
  \dropLyricsVII
  \set stanza = #"1. "
  Watch -- man, tell us of the night,
  What its signs of prom -- ise are.
  Trav -- ’ler, o’er yon moun -- tain’s height,
  See that glo -- ry beam -- ing star.
  Watch -- man, does its beau -- teous ray
  Aught of joy or hope fore -- tell?
  Trav -- ’ler, yes, it brings the day,
  Prom -- ised day of Is -- ra -- el.
}
altoWordsII = \lyricmode {
  \dropLyricsVII
%\markup\italic
  \set stanza = #"2. "
  Watch -- man, tell us of the night;
  High -- er yet that star as -- cends.
  Trav -- ’ler, bless -- ed -- ness and light,
  Peace and truth its course por -- tends.
  Watch -- man, will its beams a -- lone
  Gild the spot that gave them birth?
  Trav -- ’ler, a -- ges are its own;
  See, it bursts o’er all the earth.
}
altoWordsIII = \lyricmode {
  \dropLyricsVII
  \set stanza = #"3. "
  Watch -- man, tell us of the night,
  For the morn -- ing seems to dawn.
  Trav -- ’ler, dark -- ness takes its flight,
  Doubt and ter -- ror are with -- drawn.
  Watch -- man, let thy wan -- d’rings cease;
  Hie thee to thy qui -- et home.
  Trav -- ’ler, lo! the Prince of Peace,
  Lo! the Son of God is come!
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
tenorMusic = \relative c {
  f4 a a a |
  a a8[ g] f2 |
  a4 a a a |
  a a a2 |
  
  f8[ g] a4 a a |
  a e8[ g] f2 |
  a4 a8[ c] c4 bes |
  a a8[ g] f2 |
  
  f4 f f g |
  a c8[ bes] a2 |
  a4 a a c8[ e,] |
  f8( a4) gis8 a2 |
  
  f4 bes c f, |
  a d cis2 |
  a8[ bes] a[ g] a4 a |
  a e16[ f g8] f2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  d4 f,8[ a] d4 f,8[ g] |
  a4 a d2 |
  d4 e f g |
  f8[ e] d4 a2 |
  
  d8[ e] f[ e] d4 f,8[ g] |
  a4 a d2 |
  a4 d8[ c] f4 g |
  a a, d2 |
  
  bes4 f bes8[ a] g4 |
  f c' f,2 |
  d'4 a d c |
  f e a,2 |
  
  bes4 bes' a f |
  d bes a2 |
  f'8[ g] f[ e] d4 f,8[ g] |
  a4 a d2 \bar "|."
}
bassWords = \lyricmode {

}

pianoRH = \relative c' {
  
}
pianoLH = \relative c' {
  
}

\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}