---
title: "Static Site With AWS"
date: 2019-01-11T20:19:51Z
draft: False
tags:
 - note-to-self
 - how-to
 - AWS
 - S3


---

Getting a site up and running on AWS via S3 is fairly quick and easy. 

Here is what I did.

<!--more-->

First Setup an account and configure the AWS CLI tools.

 * create aws account
 * create IAM user
 * grant permissions to user
 * copy credentials locally
 * Install PIP `sudo apt install python-pip`
 * use PIP to install the AWS tools `pip install awscli --upgrade --user`
 * `aws configure`  use credentials from above
 * Read the docs at https://docs.aws.amazon.com/cli/latest/index.html

Then setup the S3 side


https://docs.aws.amazon.com/AmazonS3/latest/dev/HostingWebsiteOnS3Setup.html

Create an S3 bucket, configure as a website and make it world readable

Oddly here Amazon tell you to make it world readable - and warn you that you shoudln't. Ignore the warning.




Finally publish to S3

`aws s3 cp ./public/ s3://seanburlington --recursive`

Now visit the site


