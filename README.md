# ISCL
Jekyll website for Intelligent Software Construction Laboratory.

It's based on the [al-folio theme](https://github.com/alshedivat/al-folio). More exactly, based on [this commit](https://github.com/alshedivat/al-folio/tree/8fc0c4b4e32ba7583e65ee95159903355c9d5ced).


## First time: Installation

Assuming you have [Ruby](https://www.ruby-lang.org/en/downloads/) and [Bundler](https://bundler.io/) installed on your system, do the following:

```bash
$ bundle install
```

Hint: for ease of managing ruby gems, consider using [rbenv](https://github.com/rbenv/rbenv).


## Edit and test locally

The following command generates the website and starts a server to test it locally in your computer (<http://127.0.0.1:4000>).

```bash
$ bundle exec jekyll serve --livereload
```
When jekyll detects a change in your source files, it regenerates the website and refreshes the browser.

You can freely **commit** and **push** changes without any effect in the published website.

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


### Change styles

The `_sass/_variables.scss` file provides several possibilities to customize colors, fonts, etc.


## Publish

When you are done with changes and want to publish (deploy) the website, you can run:

```bash
$ bin/deploy
```
