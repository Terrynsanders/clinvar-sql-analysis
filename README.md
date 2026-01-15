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

## Visualizations

### Conflicting vs Consistent Variants
![Conflicting vs Consistent](images/conflicting_vs_consistent.png)

### Class. Predictions
![PolyPhen Predictions](images/polyphen_conflicts.png)

### Genes with Highest Conflicts
![Top Genes](images/top_genes_conflicts.png)

## Tools Used
- SQLite
- Google Sheets (visualization)
- GitHub
