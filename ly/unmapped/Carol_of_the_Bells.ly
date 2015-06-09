﻿\version "2.14.2"
\include "util.ly"
\header {
  title = "Carol of the Lala (Schedryck)"
  % The lyrics for "Carol of the Bells" is under Copyright in the United States

  poet = "S.W. Black"
  composer = \markup{tune is \italic{Schedryck}, Mikola Dmytrovitch Leontovych (1877–1921)}
  %tagline = \markup { "from" \italic {HymnsAndCarolsOfChristmas.com}}
}

global = {
  \key bes \major
  \time 3/4
  \autoBeamOff
  %\override DynamicLineSpanner #'staff-padding = #0.0
  %\override DynamicLineSpanner #'Y-extent = #'(-0.5 . 0.5)
}

sopMusic = \relative c'' {
  \tempo 4 = 170
  bes4-> a8 bes g4 |
  bes4-> a8 bes g4 |
  bes4-> a8 bes g4 |
  bes4-> a8 bes g4 | \break
  \repeat volta 2 {
    
    bes4-> a8 bes g4 |
    bes4-> a8 bes g4 |
    bes4-> a8 bes g4 |
    bes4-> a8 bes g4 | \break
    
    bes4-> a8 bes g4 |
    bes4-> a8 bes g4 |
    bes4-> a8 bes g4 |
    bes4-> a8 bes g4 | \break
    
    bes4->\p\< a8 bes g4
    bes4-> a8 bes g4 |
    bes4-> a8 bes g4 |
    bes4-> a8 bes g4 |
    
    d'4->^\mf c8 d bes4 |
    d4 c8 d bes4 |
    d4 c8 d bes4 |
    d4 c8 d bes4 |
    
    % 4th System
    g'4 g8 g f[ ees] |
    d4 d8 d c[ bes] |
    c4 c8 c d[ c] |
    
    g4 g8 g g4 |
    d8 e fis g a bes |
    c d c4 bes |
    
    d,8^\p e fis g a bes |
    c d c4 bes |
    
    %third page
    bes4-> a8 bes g4 |
    bes4-> a8 bes g4 |
    bes4-> a8 bes g4 |
    bes4-> a8 bes g4 |
  }
  \alternative {
    {
      bes4-> a8 bes g4 | 
      bes4-> a8 bes g4 | 
      bes4-> a8 bes g4 | 
      bes4-> a8 bes g4 | \break
    }
    {
      g2. |
      g |
      g |
      g |
      d'4->^\markup\italic"rall." c8-> d-> g,4->~ |
      g2.\fermata \bar "|."
    }
  }
}
sopWordsBelow = \lyricmode {
  La! la  la  la, la la -- la la,
  la la la la, la la la -- la.
  
}
sopWords = \lyricmode {
  \repeat unfold 16 { \skip 1 }
  La -- la la la, la -- la la la,
  la la la la, la la la la,
  
  Bing, Bong, Bing, Bong, la la la la.
  La la -- la la, la la -- la -- la.
  
  \repeat unfold 48 { \skip 1}
  La -- la, la -- la, la -- la, la -- la la -- la!
  La -- la, la -- la, la -- la, la -- la la -- la!
  
  La, la la la, la la -- la la
  la la -- la la la la -- ’la la!
  
  La! la la la, la la -- la la
  la la la la la la la -- la.
}

altoMusic = \relative c'' {
  s2.*4 |
  
  \repeat volta 2 {  
    g2.-> |
    f-> |
    ees-> |
    d-> |
    
    g2.-> |
    f-> |
    ees-> |
    d-> |
    
    g4-> g8 g g4 |
    g4-> g8 g g4 |
    g4-> g8 g g4 |
    g4-> g8 g g4 |
    
    bes4-> a8 bes g4 |
    bes4-> a8 bes g4 |
    bes4-> a8 bes g4 |
    bes4-> a8 bes g4 |
    
    %third system
    bes4-> bes8 bes bes4 |
    g4-> g8 g g4 |
    g4-> g8 g g4 |
    g4-> g8 g g4 |
    
    d2. |
    e4( fis) g |
    
    d2. |
    e4( fis) g |
    
    %page3
    d2.-> |
    bes-> |
    f'-> |
    ees-> |
  }
  
  \alternative {
    {
      d-> |
      d-> |
      d-> |
      d-> |
    }
    
    {
      d-> |
      d-> |
      d-> |
      d-> |
      bes'4-> a8-> bes-> g4->~ |
      g2. \bar "|."
    }
  }
}
altoWords = {
  \lyricmode {
    Bing! Bong! Bing! Bong!
    \dropLyricsV
    Bing! Bong! Bing! Bong!
    
    \set associatedVoice = "sopranos"
    La la la la la la la la,
    la la -- ’la -- la la -- la la la.
    
    La, la la la, la -- la la la
    la la la la, la -- la la la.
    \unset associatedVoice
  }
  \set stanza = \markup\dynamic"f "
  \lyricmode{
    La -- la la la la la -- la la
    la la la la, la -- la la
    \set associatedVoice = "tenors"
    la.
    
    Bing, bong, bing, bong,
    bing, bong, bing, bong,
    bing, bong, bing, bong,
    bing, bong, bing, bong,
    \unset associatedVoice
    Bing! Bong!
    Bing! Bong!
    
    Bing! Bong!
    Bing! Bong!
    
    \raiseLyrics
    Bing! Bong!
    Bing! Bong!
    Bing, bong, bing bong! __
  }
}
tenorMusic = \relative c' {
  s2.*4 |
  
  \repeat volta 2 {
    s2.*4
    
    ees2.-> |
    d-> |
    c-> |
    g-> |
    
    c4-> c8 c c4 |
    d4-> d8 d d4 |
    ees4-> ees8 ees ees4 |
    d4-> d8 d d4 |
    
    d4 d8 d d4 |
    e4 e8 e e4 |
    f4 ees8\noBeam ees d4 |
    g8[ f] ees8 ees d4 |
    
    %third system
    d4 d8 d d4 |
    d4 d8 c d4 |
    d4 c8 d bes4 |
    d4 c8 d bes4 |
    
    bes4 a8 bes g4 |
    bes4 a8 bes g4 |
    bes4 a8 bes g4 |
    bes4 a8 bes g4 |
    
    %page3
    bes2.-> |
    g-> |
    c-> |
    c-> |
  }
  \alternative {
    {
      bes-> |
      bes-> |
      bes-> |
      bes-> |
    }
    
    {
      bes4-> a8 bes g4 |
      bes4-> a8 bes g4 |
      bes4-> a8 bes g4 |
      bes4-> a8 bes g4 |
      
      s2. |
      g2.-> \bar "|."
    }
  }
}
tenorWords = \lyricmode {
  \repeat unfold 76 {\skip 1}
  La, la la la la la -- la la
  la la -- la la la la -- ’la la.
  
  Bong!
}

bassMusic = \relative c {
  s2.*4 |
  
  \repeat volta 2 {
    s2.*8
    
    ees4 ees8 ees8 ees4 |
    g4-> g8 g g4 |
    c4-> c8 c c4 |
    g4-> g8 g g4 |
    
    g4 g8 g g4 |
    g4 g8 g g4 |
    g4 g8 g g4 |
    g4 g8 g g4 |
    
    %third system
    bes4 a8 bes g4 |
    bes4 a8 bes g4 |
    bes4 a8 bes g4 |
    bes4 a8 bes g4 |
    
    d2. |
    d |
    d |
    d |
    
    %page3
    g2.-> |
    ees-> |
    <d a'>-> |
    <c g'>-> |
  }
  \alternative {
    {
      <g d'>-> |
      q-> |
      q-> |
      q-> |
    }
    {
      q-> |
      q-> |
      q-> |
      q-> |
    
      d'\rest |
      q->\fermata \bar "|."
    }
  }
}
bassWords = \lyricmode {
  \repeat unfold 52 { \skip 1 }

  \repeat unfold 4 { \skip 1 }
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
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWords
    \context Lyrics = "altos" \lyricsto "sopranos" \sopWordsBelow
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "basses" \bassWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  \layout {
    \context {
      % Remove all empty staves
      \Staff \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
    }
  }
  
}

\score {
  \unfoldRepeats

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
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWords
    \context Lyrics = "altos" \lyricsto "sopranos" \sopWordsBelow
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "basses" \bassWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  
  \midi {
    \tempo 4 = 170
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
