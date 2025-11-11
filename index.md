---
layout: default
title: All Posts
---

Back in 2012 I was going to a *lot* of gigs. Usually at least one
a week.

For a while I thought it was a good idea to share my thoughts about
the gigs I saw. And this site was the result.

Initially I just listed the shows, so the early posts are pretty
dull - just containing dates, venues and acts. But later on, I
started to write actual reviews of what I had seen. I also had
the idea of including YouTube videos of the shows. One of the
sad things about revisiting this site recently is to see how many
of those videos no longer exist.

It didn't last long - just a couple of years. I was often slow at getting
round to writing the reviews, and I sometimes found I couldn't really
remember much. For the last few months, I was just posting videos. I think
I had the idea I would go back and fill in the reviews. I never did.

At the end of 2015, I finally stopped. But the site remained online and it
still gets a few visitors from Google every month.

The original site was built using WordPress. That was a decent enough
decision at the time, but I've been slowly removing WordPress from my life
over the last few years, so today I bit the bullet and reimplemented it
using Jekyll and GitHub Pages. If some links are broken, that'll be why.
I'll carry on tweaking to fix that stuff over the coming weeks.

Maybe you'll find something interesting or nostalgic on the site. I hope
I wasn't too nasty about your favourite band.

<p style="text-align: right">
  - <a href="https://links.dave.org.uk/">Dave</a> (November 2025)
</p>

<ul>
{% for post in site.posts %}
  <li><a href="{{ post.url | relative_url }}">{{ post.date | date: "%Y-%m-%d" }} — {{ post.title }}</a></li>
{% endfor %}
</ul>

