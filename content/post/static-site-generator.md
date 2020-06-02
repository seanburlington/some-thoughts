---
title: "Choosing a Static Site Generator"
date: 2019-01-11T16:59:56Z
draft: false
tags:
  - go
  - javascript
  - hugo
  - development
categories:
  - software
---

I have been a sporadic [blogger since 2005](http://www.practicalweb.co.uk/blog/2005/02/02/reconfiguring-the-x-server-on-debian/)

In that time I have used a few different platforms and this is the time to make another choice - here's how I got here and why I chose [Hugo](https://gohugo.io/)

<!--more-->

I started off using Wordpress and later moved to Drupal (2005) mainly to gain experience of Drupal for work.

That turned out pretty well, as I gained a number of contracts over many years working on Drupal.

But as my focus is usually on paying work I found I didn't always keep up to date with Drupal patching on my own little blog, and inevtiably got hacked.

Now I could have resolved to be better at patching, but I decided I really didn't need a full CMS, [I didn't want to upgrade](http://www.practicalweb.co.uk/blog/2008/07/18/time-to-upgrade-to-drupal-6/), and I really didn't want to pay for a server any more. So I switched to [jekyll](https://jekyllrb.com/) hosted for free on [github pages](https://pages.github.com/)

Well, I say jekyll - but I found the basic jekyll experience too limiting coming from a full CMS so I used [Octopress](http://octopress.org/)

That was great - I had a site how I wanted, could easily create new blog posts using markdown, hosting was fast free and secure (there's nothing really to hack).

But skip forward a few years and I had a new laptop - I found it hard to get my old site running with newer versions of ruby, couldn't easily upgrade it - and the new release of Octopress has been "comming soon" for 4 years now...

So having been through a few iterations I want a new blog.

I want to stick with a Static Site generator for low cost and [high security](https://infosec-handbook.eu/blog/static-blogging/).

I had a play first with [https://www.gatsbyjs.org/](gatsby) - I liked the fact it is JS/React and could be a great platform to support further development of (non-static) apps.

I don't really like depending on JS for a static site though - I know JS has won much of the battle for the way the web works, but not everyone has JS enabled (I've worked in government departments where it wasn't allowed) and it just seems overkill for a blog. I looked into setting up [CSP](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) to add a needed level of user-security but [CSP support for Gatsby](https://github.com/gatsbyjs/gatsby/issues/10890) is an active issue.

Also thinking about my needs I really want something with stability - and as hugo (written in Go) is supported by [native debian packages](https://packages.debian.org/buster/hugo) it should be supported till approximatly 2024 and I may well still be using it then. Conversely JS tools are famously fast moving - which can be great if you want to work on them full time, but not for something you just want to work when you need it.

One of the things I've learned over a long career of web development is that websites stay around for a lot longer than you expect and you sometimes spend a lot more time on long-term support than initial development.

Also Hugo is really fast.

So for now at least I'll blog with Hugo.

It seems like a tool I can invest time in when I have time, but should just be standing by for me whenever I want to blog.

To get it running all I needed to do was `sudo snap install hugo` (I wanted a newer version than is available in Ubuntu 18.04 which I'm currently using)

That gives me the ability to generate my blog locally - from there I push to AWS using S3 and Cloudfront (but that's another post).
