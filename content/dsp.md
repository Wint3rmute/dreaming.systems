---
title: Audio & DSP
---

{{ <image src="/fm_harmonic_amplitudes.png" title="Frequency modulation harmonic amplitudes, taken from [Smith, J.O. Spectral Audio Signal Processing](https://ccrma.stanford.edu/~jos/sasp/FM_Harmonic_Amplitudes_Bessel.html)" noshadow={true} invert_on_white_theme={true} /> }}

# So you want to write your own synthesizer

1. Check out how FM synthesis works, it's really simple to implement

   I've written a simple FM/PM synthesizer in Rust, you can check
   it out [here](https://github.com/Wint3rmute/Nosna).

2. If you're using Rust, I recommend [Rodio](https://docs.rs/rodio/latest/rodio/) for taking care of sound card interaction.
3. Check out [The Audio Programmer](https://www.theaudioprogrammer.com/), especially their YouTube channel.
4. If you want to write a VST, give [nih-plug](https://github.com/robbert-vdh/nih-plug) a try.

# Generative music

- [Strudel.cc](https://strudel.cc/)
- [CLAVIER-36](https://news.ycombinator.com/item?id=45232299)
  - Zero-installation, browser-based. Super cool!
- [Orca](https://github.com/hundredrabbits/Orca) - the best generative music tool I've found so far
- [Bespoke](https://www.bespokesynth.com/) - a modular DAW
- [JavaScript systems music](https://teropa.info/blog/2016/07/28/javascript-systems-music.html)
- [Pure Data](https://puredata.info/)

# My projects in the audio programming field

- [Nosna](https://github.com/Wint3rmute/Nosna)
- [LibreTakt](https://github.com/Wint3rmute/Libretakt)
- [mverb-rs](https://github.com/wint3rmute/mverb-rs)

# DSP resources

## General

- [Timur Doumler: C++ in the Audio Industry](https://youtube.com/watch?v=boPEO2auJj4&listen=false). Recommended as a first-time video introduction to audio application architecture.
- [Computational Music Synthesis](https://cs.gmu.edu/~sean/book/synthesis/) - theory & algorithms behind most popular synthesis methods
- [Lock-free rust structures](https://morestina.net/blog/742/exploring-lock-free-rust-1-locks) - useful for synchronisation for real-time processes, such as audio generating threads

## Synthesis

- [Physical string modeling](https://ccrma.stanford.edu/software/clm/compmus/clm-tutorials/pm.html#k-s)

## Processing & Effects

- [Audio effects tutorial page](http://www.spinsemi.com/knowledge_base/effects.html)
- [Digital filter design](https://ccrma.stanford.edu/~jos/filters/Why_learn_about_filters.html)
- [Jon Dattorro's Effect Design](https://ccrma.stanford.edu/~dattorro/EffectDesignPart1.pdf)

## Misc/Other

- [/dmc/ wiki @ NeoCities](https://dmpdoc.neocities.org/)
- [Signal processing for sound design](https://youtube.com/watch?v=jVac5IFXpFo). Todo: watch!

# Interesting DSP/audio links

- [Miller Puckette - The Theory and Technique of Electronic](https://msp.ucsd.edu/techniques.htm)
- [Faust - functional audio stream](https://faust.grame.fr/)
- [Daisy seed, synth microcontroller](https://www.electro-smith.com/daisy/daisy)
- [llllllll.co](https://llllllll.co) and some interesting things found in there:
  - [flashcrash.net](https://flashcrash.net/)
  - https://llllllll.co/t/flash-crash-monthly-livecoding-stream-archive/45273/3
  - https://llllllll.co/t/generative-visuals-video-graphics-art-etc/2658/8
  - https://llllllll.co/t/mangling-manipulating-digital-physical-media-like-analog/54876
  - https://en.m.wikipedia.org/wiki/Musique_concr%C3%A8te
- [Lessons learned from a decade of audio programming](https://youtube.com/watch?v=Vjm--AqG04Y)
- [DirtyWave tracker firmware](https://github.com/Dirtywave/M8HeadlessFirmware)
- [TextBeat](https://github.com/flipcoder/textbeat)
- [Glicol language](https://glicol.org/)
- [AMY Synth library](https://notes.variogram.com/amy/)
- [Interview with Emillie Gillet from Mutable Instruments](https://www.synthtopia.com/content/2014/03/31/interview-with-emilie-gillet-mutable-instruments/)
- [Cellular automata synth kit](https://vtol.cc/#Cellular-Automata)
- Tarai function for generative music
- Todo: [extract all interesting synth software links from this thread](https://news.ycombinator.com/item?id=34097936)
