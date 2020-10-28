# Community website CoronaMelder App

The community website is an entry point for the community of people that are interested in learning more about the CoronaMelder app and that may be willing to help out.

## About

* Slack channel for this website: [#coronamelder-community-website](https://app.slack.com/client/T68FXPFQV/C015XMBESN4/thread/G014WUU0T19-1591803954.001400) ([join via Code for NL](https://www.codefor.nl))
* [Designs in Figma](https://www.figma.com/file/Dmo5nuXcaoxMaNTXDFc9Cw/Status-dashboard-COVID-19-notificatieapp?node-id=453%3A0)
* Community website (beta): [View the current community website on GitHub.io](https://minvws.github.io/nl-covid19-notification-app-community-website/)
* Project lead: Anouschka Scholten

## Goals:

These goals are maintained by the community manager of the Ministry of Health. Suggestions are welcome, as ever.

* Offer the community some overview
* Improve the onboarding for new community members (also for non-techies, see below)
* Give props to the most active community members
* A showcase page for the openness of the project, that will hopefully inspire other government projects to be more open too
* Set the right atmosphere and expectations for people that want to help out
* Make it clear that this is partly a community driven project. Everyone is allowed to contribute, criticize, etc.

## Target audience

(Potential) community members. Specifically:
* Programmers
* Designers
* Community managers
* Communication experts
Over time, we hope to engage a broader group of people, that can also help with promoting the app

## Look and feel

* Simple language
* Friendly and welcoming
* We are building this app in collaboration with the people of the Netherlands
* Does not have to be super tidy, a little messyness wil perhaps lower the entry barrier
* Easy to use for a broad range of people; do not assume that people will know what GitHub, Slack, etc is

## To do

* Translation of content into English

## How is this project set up?

### What is GitHub Pages

[GitHub Pages](https://pages.github.com/) are public webpages hosted directly through the GitHub repository.

### What is Jekyll

GitHub Pages support the static site generator [Jekyll](https://jekyllrb.com/).
Jekyll supports [Markdown](https://daringfireball.net/projects/markdown/), [Liquid](https://github.com/Shopify/liquid/wiki), HTML and CSS to create a complete static website.
By using the Liquid templating language, content can be stored in Markdown.

### Editing content
Content can be edited via pull requests via the [blocks folder](https://github.com/minvws/nl-covid19-notification-app-community-website/tree/master/_blocks) in this repository. 

### How to add a block

To add a block, create a Markdown file in `_blocks` with the following template:
```md
---
lang: nl
index: 7
title: The title
subtitle: Subtitle
list:
  - title: Example
    href: https://example.com
    text: Some example website listing
  - title: Another example
    href: https://www.example.com
    text: Another example
image:
  href: <link to image>
  alt: <description of the image>
button:
  text: Goto GitHub
  icon: github
  href: https://github.com/
---
The Markdown content goes here, this can contain <code>HTML</code>.
```
Please give your file a short English name without spaces (you can use dash `-` instead).
You should at least provide the base file with `lang: nl`.
The translations should have the same name with a `-lang` suffix, where `lang` is the language keyword e.g. `en`.

## How to test GitHub Pages locally

To build Jekyll, you could [install Jekyll locally](https://jekyllrb.com/docs/installation/) or probably the easier route: use a Docker image.
To use a Docker image you should have Docker engine installed, see [how to install Docker enginge](https://docs.docker.com/engine/install/).

[`starefossen/github-pages`](https://hub.docker.com/r/starefossen/github-pages) is a small Alpine Docker image for running GitHub Pages / Jekyll projects locally.
You only need to mount the pages in a volume under `/usr/src/app` like this:
```bash
docker run -it --rm -v "$PWD":/usr/src/app -p "4000:4000" starefossen/github-pages
```
*Note: for Windows users we advise Powershell or another shell that supports `$PWD`, for `cmd` you can replace `$PWD` with `%cd%`.*

The Jekyll page will be available on [`http://localhost:4000`](http://localhost:4000/).
