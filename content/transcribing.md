---
created: 2022-06-16T00:10:36+02:00
modified: 2022-06-16T00:12:52+02:00
title: Music Transcribing 
---

Writing down notes for an unnotated piece of music is called
*transcribing*. You can do it to train your ear or
to make the world a better place for musicians who can't get
notes to a specific song :)

I am currently transcribing [**wintermute**](https://ryanlott.bandcamp.com/track/wintermute),
written by [Ryan Lott](https://ryan-lott.com/). You can track my progress and get the notes
[here](https://github.com/Wint3rmute/Wintermute).

{{ <image src="/wip_transcription.png" small={false} title="I still think that I got the key wrong" /> }}

## Writing your own sheet music

Try using [LilyPond](http://lilypond.org/) for a LaTeX-like experience. LilyPond can
generate PDFs with the notes as well as `midi` files that you can play to verify
that your notations are correct. Use `timidity` for playing the `midi` file (you'll
also need to install a soundfont unless your distribution ships one as a dependency) or 
`pmidi` to route the midi notes to a synthesizer (hardware or software).

Beginning of **wintermute**, written in LilyPond:

```latex
upper = \relative c'' {
  \clef treble
  \key c \minor
  \time 4/4
  \tempo 4 = 80

  \partial 2.
  f,2. \mf _\markup {\italic legato }
 
  g8 ( f es  d es \> f  es4 d4 )
  c2. \pp

  d8 ( c8 bes8 a8 bes8 c8 bes8 d g2 )
  % \relative { c''4\< c\ff\> c c\! }

  <<des2. ges bes>>

  c8 (bes as g as bes as c)
...
```

> TODO: In the future, check whether someone has developed a
> [Typst](https://github.com/qjcg/awesome-typst) package for writing music.

