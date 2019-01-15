---
title: "Setting Up Gatsby"
date: 2019-01-10T20:20:16Z
draft: False
---


I tried Gatsby and decided it wasn't for me - but in case I want to revisit it - here's what I did.

<!--more-->

Install NVM https://github.com/creationix/nvm#installation

NB I don't like running curl | bash so I download the script review it and then run it - that way I can sanity check that it does what I expect

use nvm to install a reecent version of node

`nvm install 10`

Now install gatsby

https://www.gatsbyjs.org/docs/quick-start

`npm install --global gatsby-cli`

Create a new site.

`gatsby new gatsby-site`

Change directories into site folder.

`cd gatsby-site`

Start development server.

`gatsby develop`

Gatsby will start a hot-reloading development environment accessible by default at localhost:8000.

Edit some pages

Create a production build.

`gatsby build`

I tested these via a local apache but you can also serve via gatsby using 

`gatsby serve`

When happy push to production.


