# thesis-template
> Oh boy my thesis looks so freaking good!

Travis CI Build: [![Build Status](https://travis-ci.com/Rudo2204/thesis-template.svg?branch=master)](https://travis-ci.com/Rudo2204/thesis-template)\
License: [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

My LaTeX template for writing theses or reports.\
The style is heavily based on [my school's official writing guidelines for theses](http://doe.dee.hcmut.edu.vn/vi/bieu-mau/). Early build release of the document has been warmly received and complimented by my advisor.

## Features:
- Make use of most common packages used to write theses in my field (embedded programming in this particular document).
- Consistent frontpage, can be easily rewrite for group projects with multiple contributors.
- Vacant pages
- Most common front matter material such as: abstract, declaration, thanks, table of contents, table of figures, list of tables, ect.
- Code highlighting with `minted` package.
- Bibliography handled by `biber` (best practice) with IEEE style.
- Appendices for source code, additional information, ect.
- Automatically archive project material, compile, build the LaTeX document and deploy to Github using Travis CI.

## Requirements
- A [Travis CI](https://travis-ci.com/) account (free for open sourced repos)
- Your repo must be accessible by Travis CI.

## How-to
### Use this template
1. Fork or clone the repo and rewrite the thesis contents.
2. Edit the information in the CI files marked with `TODO`, they will tell you what and how you edit them.
3. Commit changes and push to github to kick off a `master` branch build to see if anything goes wrong.
4. Generate an **annotated** tag to kick off build and deploy process with `git tag -a $TAG` and `git push origin $TAG`.
### Disable deploy
Change `deploy.on.condition` in `.travis.yml` file to be always false.
```.travis.yml
deploy:
  on:
    condition: $DEPLOY = never
```

## Contribution
This is my first LaTeX project so it probably has some oversights.\
[Create new issue](https://github.com/Rudo2204/rtend/issues) if you have any ideas.\
Pull requests are welcomed.
