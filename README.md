# ISCL
Jekyll website for Intelligent Software Construction Laboratory.

It's based on the [al-folio theme](https://github.com/alshedivat/al-folio). More exactly, based on [this commit](https://github.com/alshedivat/al-folio/tree/8fc0c4b4e32ba7583e65ee95159903355c9d5ced).


## Usage

### First time: Installation

Assuming you have [Ruby](https://www.ruby-lang.org/en/downloads/) and [Bundler](https://bundler.io/) installed on your system (*hint: for ease of managing ruby gems, consider using [rbenv](https://github.com/rbenv/rbenv)*), first fork the theme from `github.com:alshedivat/al-folio` to `github.com:<your-username>/<your-repo-name>` and do the following:

```bash
$ bundle install
```


### Edit-and-deploy cycle

The following command generates the website and starts a server to test it locally in your computer.

```bash
$ bundle exec jekyll serve --incremental
```
Note: The `--incremental` argument tell the command to keep watching the sources to regenerate if any change occurs.

Now you can edit the source files and browse the output locally.
After you are done, **commit** your final changes.
Finally, you can deploy (publish) the website by running the deploy script:

```bash
$ ./bin/deploy
```


### Add publications

Publications page is generated automatically from the BibTex bibliography at `_bibliography/papers.bib`.
You can also add new `*.bib` files and customize the look of your publications however you like by editing `_pages/publications.md`.

Keep meta-information about co-authors in `_data/coauthors.yml` and Jekyll will insert links to their webpages automatically.


### Tunning styles

The `_sass/_variables.scss` file provides several possibilities to customize colors, fonts, etc.


## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
