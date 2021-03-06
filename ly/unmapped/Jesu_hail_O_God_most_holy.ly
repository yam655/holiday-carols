﻿\version "2.14.2"

\header {
  title = "Jesu hail! O God most holy"
  poet = "Ave Jesu Deus"
  translator = "Translated by Rev. H.R. Bramley (1833–1917)"
  composer = "Sir John Stainer (1840–1901)"
  %source = \markup { "from" \italic {Christmas Carols, New and Old}}
}

global = {
    \key ees \major
    \time 2/4
    \tempo 4 = 90
}

sopMusic = \relative c' {
  ees4 f |
  bes aes |
  g f |
  f ees \bar "||"
  f4. g8 |
  aes4 c |
  
  bes aes |
  aes g \bar "||"
  bes c |
  d4. d8 |
  d4 c |
  bes a \bar "||"
  ees'_\p d |
  
  c bes |
  bes a |
  g g \bar "||" 
  g4. f8 |
  ees4 ees |
  aes4. g8 |
  g4 f \bar "||"
  
  bes4^\markup\italic"cresc." bes |
  g ees |
  c'4. bes8 |
  bes4( aes) \bar "||"
  c4 c |
  b c |
  d g, |
  
  ees' ees \bar "||"
  ees2 |
  g,4( f) |
  ees2\fermata \bar ":|"
  ees'^\markup\italic{ "Last Verse"} |
  g4( f) |
  ees2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  bes4 d |
  ees ees |
  ees d |
  d ees \bar "||"
  c4. e8 |
  f4 ees |
  
  d d |
  d ees \bar "||"
  g g |
  g4. g8 |
  g4 a |
  g fis \bar "||"
  fis! g |
  
  a g |
  g fis |
  g g \bar "||"
  ees4. d8 |
  c4 c |
  f4. ees8 |
  ees4 d |
  
  ees ees |
  ees ees |
  ees e |
  f2 \bar "||"
  f4 f |
  f f |
  f f |
  
  ees aes \bar "||"
  g2 |
  ees4( d) |
  ees2 |
  g2 |
  bes4.( aes8) |
  g2 \bar "|."
}
altoWords = {
  
  \lyricmode {
    \set stanza = #"1. "
    Je -- su hail! O God most ho -- ly,
    Gen -- tle Lamb, an In -- fant low -- ly;
    Born, great God, a hu -- man stran -- ger,
    Laid with -- in the nar -- row man -- ger:
  }
  \set stanza = \markup\dynamic"f  "
  \lyricmode{
    \set associatedVoice = "tenors"
    Might tran -- scend -- ing, Weak -- ness blend -- ing,
    Great -- ness bend -- ing from the sky;
    Love un -- end -- ing, man be -- friend -- ing,
  }
  \set stanza = \markup\dynamic"  ff "
  \lyricmode{
    God most High,
    God most High.
  }
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  To en -- rich my des -- o -- la -- tion,
  To re -- deem me from dam -- na -- tion,
  Wrapt in swath -- ing -- bands Thou li -- est,
  Thou in want and weak -- ness sigh -- est:
}
altoWordsIII = {
  
  \set stanza = \markup{\dynamic"mf " "3. "}
  \lyricmode {
    Low a -- based, where brutes are sleep -- ing,
    God’s be -- lov -- ed Son is weep -- ing;
    Judge su -- preme, true God -- head shar -- ing,
    Sin -- ner’s like -- ness for us wear -- ing!
  }
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Je -- su, Thine my heart is sole -- ly;
  Draw it, take it to Thee whol -- ly:
  With Thy sa -- cred Fire il -- lume me,
  Let it in -- ward -- ly con -- sume me,
}
altoWordsV = \lyricmode {
  
  \set stanza = #"5. "
  Hence let i -- dle fan -- cies van -- ish,
  Hence all e -- vil pas -- sions ban -- ish;
  Make me like Thy -- self in meek -- ness,
  Bind to Thee my hu -- man weak -- ness,
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  g4 aes |
  g aes |
  bes aes |
  aes g \bar "||"
  c4. bes8 |
  aes4 g |
  
  f bes |
  bes bes \bar "||"
  g a |
  bes4. bes8 |
  ees4 ees |
  d d \bar "||"
  c^\p d |
  
  ees4 ees |
  d4. c8 |
  bes4 bes \bar "||"
  bes4. bes8 |
  c4 c |
  c4. c8 |
  bes4 bes \bar "||"
  
  bes bes |
  c c |
  c c |
  c2 \bar "||"
  c4 c |
  d c |
  b b |
  
  c ees \bar "||"
  ees2 |
  bes4( aes) |
  g2 |
  
  ees' |
  ees4( d) |
  ees2 \bar "|."
  
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  ees4 ees |
  ees c |
  bes bes |
  c c \bar "||"
  aes'4. g8 |
  f4 aes, |
  
  bes4 bes |
  ees ees \bar "||"
  ees ees |
  bes4. bes8 |
  c4 c |
  d d \bar "||"
  a bes |
  
  c c |
  d d |
  g g \bar "||"
  ees4. ees8 |
  aes4 aes |
  f f |
  bes aes \bar "||"
  
  g g |
  c c |
  aes g |
  f2 \bar "||"
  aes4 aes |
  aes aes |
  g g |
  
  c c \bar "||"
  bes2 |
  bes, |
  ees\fermata |
  bes' |
  bes, |
  ees \bar "|."
}
bassWords = \lyricmode {

}

  
\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "altos" \altoWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
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

