---
title: "AWS CloudFront - limitations"
date: 2019-01-15T12:19:51Z
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

I got this site running on AWS using S3 and CLoudfront, it was all easy enough.

But then a couple of things didn't work how I wanted.

Index pages wern't there, and I couldn't add security headers.

<!--more-->


It turns out that 


   CloudFront does allow you to specify a default root object (index.html), but it only works on the root of the website (such as http://www.example.com > http://www.example.com/index.html). It does not work on any subdirectory (such as http://www.example.com/about/). If you were to attempt to request this URL through CloudFront, CloudFront would do a S3 GetObject API call against a key that does not exist.

There is a solution

[Implementing Default Directory Indexes in Amazon S3-backed Amazon CloudFront Origins Using Lambda@Edge](https://aws.amazon.com/blogs/compute/implementing-default-directory-indexes-in-amazon-s3-backed-amazon-cloudfront-origins-using-lambdaedge/)

But I decied for now at least to simply 
