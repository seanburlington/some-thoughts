---
title: "Fabric build scripts and Nightwatch test Reports"
date: 2019-04-02T20:12:22+01:00
draft: false
---

I've just started some work on a [fabric](http://www.fabfile.org/) script that works as part of a build process.

The actual script is part of a long process, and I'm not familiar with fabric (or even python) so I spent a little time cooking a basic script that does a few things I need.

 * Hello world stuff just to check I understand the syntax
 * Define a remote host which is a local [vagrant](https://www.vagrantup.com/) instance
 * Run some tests
 * Copy to the local server any test reports (even if the tests fail)
 * Return a failure result if tests fail 

I wasn't quite sure how [nightwatch](http://nightwatchjs.org) returned when tests run OK but fail - it seems it returnd an error status in this case. So I needed to handle this, grab the results, and then re-throw the error condition.

Working in a small script really helps speed up work, and now I shouldn't have much left to do when I integrate this with teh main build scripts.

Though I've tried to build html reports from the nightwatch output and so far haven't succeeded.



{{< highlight python >}}


from __future__ import with_statement
from fabric.api import *
from fabric.contrib.console import confirm

# define remote host - NB fab wil prompt for an ssh password if needed
env.hosts = ['vagrant@nightwatch.ce-vm.local']

# fab hello
def hello():
    local("echo 'hello world'")

# fab commit
def commit():
    local("git add * && git commit -m \"foo\"")


# fab hellow:name=foo
def hellow(name="world"):
    print("Hello %s!" % name)

# fab nightwatch
def nightwatch():
    code_dir = '/vagrant/tests/nightwatch'
    try:
       run("cd " + code_dir  + " && nightwatch --env=vm -o ./reports -t  ./tests/drupal_admin/search.js") 
       run("echo 'This only runs if tests pass'")
       run("exit 1") # simulate a test failure
    except Exception as inst:
       run("echo 'This only runs if tests fail'")
       raise inst
    finally:
       run("echo 'This always runs'")
       get(code_dir + '/reports/', './')
    run("echo 'This only runs if tests pass'")

{{< / highlight >}}
