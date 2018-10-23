# ISCLab

This is the [Jekyll](https://jekyllrb.com/) website for Intelligent Software Construction Laboratory.

## Upstream

It's based on the [al-folio theme](https://github.com/alshedivat/al-folio). More exactly, based on [this commit](https://github.com/alshedivat/al-folio/tree/8fc0c4b4e32ba7583e65ee95159903355c9d5ced).


## Environment

### First time: Installation

Assuming you have [Ruby](https://www.ruby-lang.org/en/downloads/) and [Bundler](https://bundler.io/) installed on your system, do the following:

```bash
$ git clone git@github.com:bergel/ISCL.git
$ cd ISCL
$ bundle install
```

**Hint**: for ease of managing ruby gems, consider using [rbenv](https://github.com/rbenv/rbenv).

**Note**: These steps probed to work on:
- Bundler version 1.16.4 (`bundle --version`)
- Jekyll 3.7.4 (`bundle show jekyll`)


**Staying up-to-date**

The [official doc](https://jekyllrb.com/docs/upgrading/) recommends updating Jekyll often via `bundle update jekyll`.


## Changing the website

The following command generates the website locally in your computer and starts a server to test it (<http://127.0.0.1:4000>):

```bash
$ bundle exec jekyll serve --livereload
```
When jekyll detects a change in source files, it regenerates the website and refreshes the browser.

**Note**: The `--incremental` option reduces the time to regenerate. However, in `jekyll 3.7.3` this option doesn't work well with inline news (`index.html` isn't regenerated).


### Add news

News are generated from `_news/*.md`.
News can be inline or detailed, depending on the `inline` option.

#### Example of inline news:
```
---
layout: post
date: 2018-09-12 12:59:00-0400
inline: true
---
This website was born! :sparkles: :smile:
```

#### Example of detailed news:
```
---
layout: post
date: 2018-09-12 12:59:00-0400
inline: false
title: A long announcement with details
---
Announcements and news can be much longer than just quick inline posts. In fact, they can have all the features available for the standard blog posts. See below.
```


### Add publications

Publications page is generated automatically from the BibTex bibliography at `_bibliography/papers.bib`.
You can also add new `*.bib` files and customize the look of your publications however you like by editing `_pages/publications.md`.

Keep meta-information about co-authors in `_data/coauthors.yml` and Jekyll will insert links to their webpages automatically.


### Tweak styles

The `_sass/_variables.scss` file provides several possibilities to customize colors, fonts, etc.


## Publish

You can freely **commit** and **push** changes without any effect in the published website.

Run this script when you are done with changes and want to publish (deploy) the new website:

```bash
$ bin/deploy
```
