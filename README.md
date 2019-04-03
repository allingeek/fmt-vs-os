# fmt-vs-os

I loved an article I read the other day by a CockroachDB engineer, [Why are my Go executable files so large?](https://science.raphael.poss.name/go-executable-size-visualization-with-d3.html). I found myself wondering how much smaller we could make a Hello World application just by writing direct to `os.Stdout` instead of using the `fmt` package. So today I put together a little experiment using similar methods as those described in the article.

This little project compares to tiny Hello World apps and inspects the resulting programs.

Clone the repo and run `./compare.sh` to build and execute the comparison.

## Results

Just in case you don't feel like running arbitrary code you found on the internet the output as of today on a macbook running Go 1.12 are as follows:

```
Symbol counts: fmt 3514, os 1878
fmt has 87.00% more symbols
Hello, World file sizes: fmt 2056k, os 1360k
fmt is 51.00% larger on disk
```
