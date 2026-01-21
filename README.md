# clinvar-sql-analysis
SQL Analysis of clin_var variants with conflicting interpretations
# ClinVar Variant Conflict Analysis (SQLite)

## Overview
This project analyzes ClinVar genetic variants to identify patterns in
conflicting clinical interpretations using SQLite.

## Dataset
- Source: ClinVar
- Focus: Variants with conflicting vs consistent interpretations
- Key columns: CHROM, POS, REF, ALT, SYMBOL, CLASS, PolyPhen

## Key Questions
- How many variants have conflicting interpretations?
- How many variants have consistent interpretations?
- Which genes have the most conflicts?
- How do PolyPhen predictions distribute among variants?

## Variant Interpretation Overview

### Conflicting vs Consistent Variant Interpretations
![Conflicting vs Consistent Variant Interpretations](charts/Total%20Number%20of%20Conflicting%20vs%20Consistent%20Variant%20Interpretations.png)


### Total Number of Variants per Gene
![Gene Variants](./charts/Total%20Number%20of%20Variants%20per%20Gene.png)

### Genes with Highest Conflicts
![Top Genes](./charts/Genes%20With%20The%20Most%20Conflicting%20Interpretations.png)

## Tools Used
- SQLite
- Google Sheets (visualization)
- GitHub
