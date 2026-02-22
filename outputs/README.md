# outputs/

Rendered HTML and PDF reports are placed here by `rmarkdown::render()`.

These files are generated artifacts and are not tracked in version control.
To reproduce them, run:

```r
rmarkdown::render("analysis/eventos_verificados.Rmd",
                  output_dir = "outputs")
```
