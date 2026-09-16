---
title: Registry-based search engine
---

*Bringing human-run sites back into search results*.

**Update: I found a somewhat similar project: [LinkWarden](https://linkwarden.app).**

# Problem outline

Let's face it, most of the sites you now see when using a search engine are AI
generated. Either to position the site higher in the search results or to make
it seem more lively, the majority of big sites utilise some kind of automated
content generation.

---

POV: you just wanted to google a recipe for [scrambled
eggs](https://www.tasteofhome.com/collection/best-egg-recipes/):

>When our son, Chris, wants something other than cold cereal in the morning, he
>whips up these eggs. Cheese and evaporated milk make them especially good.
>They’re easy to make when you’re camping, too. —Chris Pfleghaar, Elk River,
>Minnesota

---

It's making our search results worse, as the **actual information gets
obscufated** behind a wall of AI-generated SEO nonsense. We cannot expect the
companies behind search engines to improve the situation, as **they benefit
from the ads** they serve us, while we scroll through paragraphs of banalities.

# Possible solutions

You could move to search engines that only index [minimalist
websites](http://wiby.me/) or to the ones that only index a [hand-picked list
of pages](https://lieu.cblgh.org/). Hell, you could even write some
pre-processor for [searx](https://searx.github.io/searx/) that would filter out
the sites that don't pass a [GPT-detector](https://www.gpt-detector.com/)
check.

{{ <image src="/ai_art_protest_poster.jpg" title="Anti AI art poster by Veronika
Kozlova." small={true} /> }}

While those solutions certainly have potential, it will be hard to scale them
further without any standarisation. I'm here to propose one. Allow me to
introduce **search engine registries** (name subject to change).

# Overview

A **search engine registry** is a list of websites that is hosted as a plain
text file under some `url`. The end user may use **any set of registries**
while making a query to a search engine. And the search engine will **only
display results from the sites present in the selected registers**.

{{ <image src="/search_engines_diagram.png" title="Stupid simple example
diagram, making those helps me think" noshadow={true} /> }}

# Principles

## Decentralised

Just as someone can run their own search engine instance, people and
institutions may run their own search registries. Just put them out onto your
website or a git repository, any link will do!

## Run by real people and institutions

- Your university may run a registry containing a set of pages that they trust
  when doing research (blogs of other researchers, science news websites, etc)

- An expert may run a registry of websites that they've validated to contain
  true information

- A journalist may run a registry of websites run by other journalists that
  they find competent

- An organisation which is developing a programming language may run a registry
  with curated resources for that language

- Your goverment may run a registry containing websites that serve official
  goverment information

## Uses a simple and open standard

```bash
$ curl -v https://person-i-trust.com/registry
< content-type: text/plain

llllllll.co
xxiivv.com
github.com
```

**That's all!**

(Maybe add comments to sites? Could be cool)

## And most importantly

>**You, the end user, are free to pick your own set of registries.**

---

Useful links:

- [build your own search engine](http://wiby.me/about/guide.html)
- ["Grasp" search engine](https://usegrasp.com/), a product built around this niche, although with quite strict limits for running search queries (20 queries/month on free tier as of may 2023)
