
<!-- README.md is generated from README.Rmd. Please edit that file -->

### Note: This is just a rebuild of a toy package from “R Packages” to test if my system works as expected. This package is not expected to be actually used.

# regexcite

<!-- badges: start -->
<!-- badges: end -->

The goal of regexcite is to to make regular expressions more exciting!
It provides convenience functions to make some common tasks with string
manipulation and regular expressions a bit easier. The help text is
copied verbatim from the book.

## Installation

You can install the development version of regexcite from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("FabianWag/regexcite")
```

## Usage

A fairly common task when dealing with strings is the need to split a
single string into many parts. This is what `base::strplit()` and
`stringr::str_split()` do.

``` r
library(regexcite)
## basic example code
(x <- "alfa,bravo,charlie,delta")
#> [1] "alfa,bravo,charlie,delta"
strsplit(x, split = ",")
#> [[1]]
#> [1] "alfa"    "bravo"   "charlie" "delta"
stringr::str_split(x, pattern = ",")
#> [[1]]
#> [1] "alfa"    "bravo"   "charlie" "delta"
```

Notice how the return value is a **list** of length one, where the first
element holds the character vector of parts. Often the shape of this
output is inconvenient, i.e. we want the un-listed version.

That’s exactly what `regexcite::str_split_one()` does.

``` r
library(regexcite)

str_split_one(x, pattern = ",")
#> [1] "alfa"    "bravo"   "charlie" "delta"
```

Use `str_split_one()` when the input is known to be a single string. For
safety, it will error if its input has length greater than one.

`str_split_one()` is built on `stringr::str_split()`, so you can use its
`n` argument and stringr’s general interface for describing the
`pattern` to be matched.

    #> [1] "alfa"                "bravo,charlie,delta"
    #> [1] "192" "168" "0"   "1"
