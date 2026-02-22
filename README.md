# verificaMX-events

**verificaMX-events** is a reproducible R-based pipeline for converting official statements and corroborated reports into an auditable dataset of security events in Mexico.

## Motivation

During crisis situations, maps and dashboards often circulate with unverified points, inferred locations, or duplicated reports. Official datasets (e.g., SESNSP) are reliable but lag in time and aggregation level. This project bridges that gap by focusing on **event-level verification**, transparency, and methodological restraint.

## What this project does

- Converts official statements (e.g., SEDENA communiqués) into structured datasets
- Preserves full source text for auditability
- Assigns verification levels to each event
- Avoids inferred geolocation or speculative mapping
- Produces reproducible HTML/PDF reports via R Markdown

## What this project does NOT do

- It does not scrape social media rumors
- It does not infer coordinates without authoritative sources
- It does not generate "viral-style" incident maps

## Repository structure

```
data/raw/        — original source texts
data/processed/  — clean, auditable datasets
analysis/        — R Markdown analyses
outputs/         — rendered HTML/PDF reports (not tracked in git)
scripts/         — helper functions
```

## Example case

- **22 February 2026**: Verified military operation in Tapalpa, Jalisco, based on an official SEDENA communiqué.

## Reproducing the report

```r
# Install required packages (first run only)
install.packages(c("rmarkdown", "knitr", "tidyverse"))

# Render the analysis
rmarkdown::render("analysis/eventos_verificados.Rmd",
                  output_dir = "outputs")
```

## Tools

- R
- R Markdown
- tidyverse
- reproducible research practices

## Author

Lisette Lurker
