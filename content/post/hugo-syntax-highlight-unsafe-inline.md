---
title: "Hugo Syntax Highlighting avoiding Unsafe Inline"
date: 2020-06-02T13:17:38+01:00
tags: [CSP, Hugo, Headers]
draft: False
---

If you use CSP headers to add security to your website and you use Hugo with Syntax highlighting you may run into a problem in that by default hugo generates nline styles.

That is html like

```html
<span style="color:#a6e22e">headers</span>[<span style="color:#e6db74"
  >&#39;referrer-policy&#39;</span
>] <span style="color:#f92672">=</span> [{<span style="color:#a6e22e">key</span
><span style="color:#f92672">:</span>
<span style="color:#e6db74">&#39;Referrer-Policy&#39;</span>,
<span style="color:#a6e22e">value</span><span style="color:#f92672">:</span>
<span style="color:#e6db74">&#39;same-origin&#39;</span>}];
```

A good Content Security Policy will not allow this - and while you can workaround it by allowing 'unsafe-inline' this (the clue is in the name) is unsafe.

To avoid this configure hugo to use classes for syntax highliting and generate a CSS file for it

https://gohugo.io/getting-started/configuration-markup#highlight

```toml
[markup]
  [markup.highlight]
    noClasses = false
    style = "monokai"
```

```bash
hugo gen chromastyles --style=monokai > syntax.css
```

include this css file in your theme and you have highlighting without inline styles,

It should look like this

```html
<span class="p">];</span>
<span class="nx">headers</span><span class="p">[</span
><span class="s2">&#34;referrer-policy&#34;</span><span class="p">]</span>
<span class="o">=</span> <span class="p">[</span> <span class="p">{</span>
<span class="nx">key</span><span class="o">:</span>
<span class="s2">&#34;Referrer-Policy&#34;</span><span class="p">,</span>
<span class="nx">value</span><span class="o">:</span>
<span class="s2">&#34;same-origin&#34;</span> <span class="p">},</span>
<span class="p">];</span>
```

Now it should work with your strong CSP
