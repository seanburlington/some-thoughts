---
title: "Website Tests"
date: 2020-06-03T15:59:50+01:00
draft: False
tags:
  - testing
  - bootstrap
  - accessibility
  - security
  - performance
  - CSP
---

Having got this website running fairly well I ran it through some tests to check it looks OK

These test for

- security
- accessibility
- performance

<!--more-->

The sites I used are

- https://observatory.mozilla.org/analyze/sean.burlington.me.uk
- https://wave.webaim.org/report#/https://sean.burlington.me.uk/
- https://developers.google.com/speed/pagespeed/insights/?url=https%3A%2F%2Fsean.burlington.me.uk%2F

Security looks good and my earlier work on CSP headers seems top have paid off

I was surprised to see some issues in accessibility related to contrast - which turn out to be a problem in default bootstrap

https://getbootstrap.com/docs/4.0/getting-started/accessibility/

A few small CSS changes fixed that

Page speed looks OK, I'm using a big image and there is a lot of CSS - I could probably work on that but for my needs it isn't worthwhile at this time.

I could adjust cache headers but I don't expect a lot of regular visitors so there would be limited real world benefit.
