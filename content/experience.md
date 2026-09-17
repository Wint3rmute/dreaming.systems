---
title: Website experience
---

# Notes on the browsing experience i strive for

## Tags

I don't think that a hierarchical, filesystem-alike blog structure reflects my
way of thinking very well (I believe it's also true for most people).

Unfortunately, I haven't found any simple tags-indexing search solutions that
would allow me to easily navigate through a tag-based as I'm editing it.
Perhaps `fzf` + some custom search expression/plugin would work well here.

## Navigation

Since I'm using tags, the posts are loosely interconnected, which makes
navigation less predictable (and in my opinion more enjoyable). I'd love to
extend this unpredictability by using some sort of data clustering algorithm
(think t-SNE but I'm no expert here) to automagically generate `related posts`
links.

Shower thought from 5.05.22:

> no links, only directions

Sounds pretentious enough to make a nice headline.

```
Update 17.07.2022
```

I've managed to hack together some basic text vectorisation tools
and create auto-generated "related links" section for each page.

I'm also generating a cool looking connections graph using `graphviz`,
see the [map](/map) for details.

## Gotta go fast!

Every image is compressed by [Compress or die](https://compress-or-die.com). I
highly recommend this site for slimming down images!
