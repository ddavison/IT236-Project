---
layout: default
title: Best Practices
---

This page provides a couple of best practices to use with web automation.

One best practice to start with, would be to use a framework that is proven to be successful. We will use the
[Getting started with Selenium](https://github.com/{{ site.github_username }}/getting-started-with-selenium) framework.
You can [download the Open Source GitHub project](https://github.com/{{ site.github_username }}/getting-started-with-selenium/archive/master.zip) and follow along.

| Best Practice | Example | Description
|---------------|---------|
|               |         |
| Fluent interfaces | {% gist 7234204 %} | You can see starting at line 8, we don't end the statement with a `;` Instead, we use a concept known as "[method chaining](http://wikipedia.org/wiki/Method_chaining)".  Using this fluent interface, is extremely effective for automating UI's
|
| Use ID's and Class's where appropriate in HTML | {% gist c3f823b1139bcce7ff09 %} | Appropriately identifying elements is imperative for successful test automation since tools like [Selenium](http://seleniumhq.org) can recognize them to interact with them.
|
| Parallel testing | `TestA, TestB, TestC` | As opposed to, `TestA -> TestB -> TestC`.  TestA, B, and C should run **parallel** as opposed to sequential because parallel testing can save hours of testing time.  Instead of spending 5m per test, to a total of `t*N` (where `t` is time, and `N` is num of tests), running tests parallel, you will be running only `t`
|
| Test Independence | `TestA, TestB, TestC` | With **independent** tests, you will be making sure that your automated tests will for sure finish.  No test wil be "waiting" on another test to finish, or some setup to happen.
