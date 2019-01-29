---
title: "AWS CloudFront - limitations"
date: 2019-01-15T12:01:51Z
draft: False
tags:
 - note-to-self
 - how-to
 - AWS
 - S3
 - headers
 - security
 - hugo


---

I got this site running on AWS using S3 and CloudFront, it was all easy enough.

But then a couple of things didn't work how I wanted.

Index pages wern't there, and I couldn't add security headers.

<!--more-->


It turns out that 


> CloudFront does allow you to specify a default root object (index.html), but it only works on the root of the website (such as http://www.example.com > http://www.example.com/index.html). It does not work on any subdirectory (such as http://www.example.com/about/). If you were to attempt to request this URL through CloudFront, CloudFront would do a S3 GetObject API call against a key that does not exist.

There is a solution

[Implementing Default Directory Indexes in Amazon S3-backed Amazon CloudFront Origins Using Lambda@Edge](https://aws.amazon.com/blogs/compute/implementing-default-directory-indexes-in-amazon-s3-backed-amazon-cloudfront-origins-using-lambdaedge/)

But I decied for now at least to simply avoid depending on index pages by swithcing [Ugly Urls](https://gohugo.io/content-management/urls/#ugly-urls) on in Hugo.

To get this to work I had to fix my theme following some of the comments and links from https://github.com/gohugoio/hugo/issues/1989

I'm used to a dymanic CMS where any page can be served on any URL with whatever header you specify.

It's all a bit different with a static site where all you have is a set of files, not even an apache style DirectoryIndex directive to work with.




