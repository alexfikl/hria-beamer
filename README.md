# HRIA Beamer Theme

[![GitHub Actions Workflow Status](https://github.com/alexfikl/hria-beamer/actions/workflows/ci.yml/badge.svg)](https://github.com/alexfikl/hria-beamer/actions/workflows/ci.yml)
[![Open in Overleaf](https://img.shields.io/static/v1?label=LaTeX&message=Open-in-Overleaf&color=47a141&style=flat&logo=overleaf)](https://www.overleaf.com/docs?snip_uri=https://github.com/alexfikl/hria-beamer/archive/refs/heads/main.zip)

> [!WARNING]
> This template is mostly just a personal project at the moment and does not have
> any official capacity. It works well enough for that, but is also missing a
> few quality-of-life features. Any bug reports or feature requests are
> **very welcome**!

## What it Looks Like

[Full PDF](template.pdf)

![template](images/template.png "Template")

## How to Use It

Copy the `beamerthemehria.sty` and the accompanying `beamercolorthemehria.sty` file
to your local directory together with any relevant assets from the `assets` folder. You can
use the `template.tex` file to get you started with a few useful options and examples.
The `template.tex` can then be built with `PDFLaTeX` (or `XeLaTeX` or `LuaLaTeX`
for the adventurous).

The package defines the following options used as `\usetheme[opts]{hria}`.

| Option                            | Description                           |
| :-                                | :-                                    |
| `language=<lang>`                 | One of *english* or *romanian*        |
| `showframe`                       | Shows a frame around page elements (margins, etc.) |
| `layoutgrid`                      | Adds a debug grid to check alignment  |

The `language` is used to automatically select the logos with appropriate text.
This can be avoided by providing your own logos using the following commands,
but care must be taken to size them nicely.

| Macro                             | Description                           |
| :-                                | :-                                    |
| `\hrialogo`                       | Main HRIA logo used on the title page |
| `\hrialogoeu`                     | EU logo used on the top-left of the title page |
| `\hrialogoro`                     | Romanian Government logo used on the top-right of the title page |
| `\venue`                          | Venue name (for the presentation) in footer |

Note that you generally do not want to change these logos, since they have good
defaults. However, you may want to use your institutional logo instead of, e.g.,
the EU logo, so these commands are available.

## License

Creative Commons Attribution 4.0 International
