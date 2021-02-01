---
title: "Covid Remote Learning Tools"
date: 2021-02-01T15:53:26Z
draft: false
tags:
  - covid
  - lockdown
  - homeschool
  - school
  - accessibility
  - security
  - safety
  - privacy
  - data protection
---

# Some Problems

In the current circumstances it seems like we cannot avoid failing our children in some ways: we are merely trying to choose which harm is least. In the emergency to get online education up and running many matters have had less scrutiny than would be normal.

I think it's worth flagging up some compromises that have been made (even if only for the sake of clarifying my own thoughts).

<!--more-->

These issues are less serious than the consequences of fully open schools; but important matters have been let go.

The following is based only on my experience.

My child has been asked to use [Seesaw][1] and not had real-time lessons, much of this commentary reflects that specific product.

## Health and Safety

Every office I have ever worked at I have received [health and safety advice][2] when I have worked from home HR has checked I have a suitable desk and chair - I get free eye tests because I work on a computer.

While office work isn’t considered dangerous most people I know who work at computers for extended periods of time suffer some problems; RSI is very common as is back trouble.

Many kids don’t have furniture that fits them (and much child sized "office" furniture is now out of stock)

Many kids are working on tablets which may lead to very poor ergonomics.

## Accessibility

There has (reasonably) been a focus in schools on getting devices and bandwidth to kids who don't have it.

Putting content online, and getting kids connected is clearly necessary for online learning but it is not sufficient.

Even when kids are online the content needs to be _accessible_

> <cite>W3C: [Introduction to Web Accessibility][3]</cite>
>
> When websites and web tools are properly designed and coded, people with disabilities can use them. However, currently many sites and tools are developed with accessibility barriers that make them difficult or impossible for some people to use.
>
> Making the web accessible benefits individuals, businesses, and society. International web standards define what is needed for accessibility.

Note that there is [legal obligation][4] on schools to make services accessible

But perhaps more importantly sites that are developed to be accessible end up being much easier to use for most people.

Accessibility in practical terms usually means the site is easy to read, navigation is clear, cognitive burdens should be considered, and reliance on fine motor control is not excessive.

### Seesaw specific Accessibility issues

There is missing [alt text][5] on many images used for navigation – this means no tool tips for sighted readers and no text info for anyone using a screen reader.

The site generally appears to be optimised or people using a full-size tablet with a stylus. Drawing on a small screen with a finger or a larger one with a mouse is very frustrating and doesn’t deliver good results.

Creating text boxes to answer worksheet questions – can you imagine trying to do a tax return like that ?

Many parents seem to have resorted to either preparing text boxes for the child, or printing out worksheets. Even the printed worksheets on Seesaw result in page about a quarter the size of the original – and presumably it was the original size for a reason even before parents needed to be able to read it too!

The children who are happily working around these issues and completing their work are surely the ones you were least worried about anyway.

## Data Protection

I think it is fair to say that many of us are uncomfortable with the degree of surveillance that exists in our technology: but also that we find that technology useful and don't have time to read every legal document we click on.

The GDPR is in my view a useful attempt for Governments to take on the challenge of balancing rights that citizens are ill equipped for individually.

If we worry now about how we are affected by targeted adverts (political and commercial) just imagine how much worse it could be if Big Tech has been allowed to monitor schooling and can target adverts based on who does or doesn't understand statistics, or who studied history.

**Imagine if politicians can target adverts knowing what you learned at school.**

SeeSaw is recording analytic data which does include Personally Identifiable Information (know as PII)

> <cite>[Understanding PII in Google's contracts and policies][6]</cite>
>
> Google interprets PII to exclude, for example:
>
> pseudonymous cookie IDs
> pseudonymous advertising IDs
> IP addresses
> other pseudonymous end user identifiers”

This directly Contradicts the ICO

> <cite>ICO : [What is personal data?][7] </cite>
>
> ‘Online identifiers’ includes IP addresses and cookie identifiers which may be personal data.

Note also that even within Google's definition they [require customers to gain consent for analytics][8]

NB SeeSaw does not gain this consent – there is no cookie popup

Note also that the Seesaw cookie policy has no opt out – only an instruction to disable cookies which it admits won’t work.

> <cite>[Seesaw Privacy Policy][9]</cite>
>
> You can choose to remove or disable cookies via your browser settings. Please be aware that Seesaw will not work properly if you disable or decline cookies.

In addition to an initial cookie popup GDPR requires users to be able to request data is deleted, and to remove consent at any time.

Some websites including this one and [Github][10] have decided that the most sensible way to comply with GDPR is simply to stop tracking users and instead only track the genuinely anonymous technical data needed to maintain the website.

## Security

Seesaw passwords are centrally issued and cannot be changed by users.

Passwords are known by school – if an account is abused it is hard to see who was responsible.

They are long and complex so must be written down, if this leads to someone finding them it is hard to change them (need to contact school).

[NCSC advice][11] is to allow people to choose random but memorable passwords

[1]: https://web.seesaw.me/
[2]: https://www.hse.gov.uk/toolbox/workers/home.htm
[3]: https://www.w3.org/WAI/fundamentals/accessibility-intro/
[4]: https://www.gov.uk/government/publications/online-accessibility-regulations-campaign-supporter-pack/gds-accessibility-regulations-campaign-information-for-education#how-this-will-impact-schools-higher-education-and-further-education
[5]: https://moz.com/learn/seo/alt-text
[6]: https://support.google.com/analytics/answer/7686480?hl=en
[7]: https://ico.org.uk/for-organisations/guide-to-data-protection/guide-to-the-general-data-protection-regulation-gdpr/key-definitions/what-is-personal-data/
[8]: https://marketingplatform.google.com/about/analytics/terms/us/
[9]: https://web.seesaw.me/privacy-policy
[10]: https://github.blog/2020-12-17-no-cookie-for-you/
[11]: https://www.ncsc.gov.uk/blog-post/three-random-words-or-thinkrandom-0
