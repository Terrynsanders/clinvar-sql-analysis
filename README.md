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

## Variant Interpretation Overview

### Conflicting vs Consistent Variant Interpretations
![Conflicting vs Consistent Variant Interpretations](charts/Total_Number_of_Conflicting_vs_Consistent_Variant_Interpretations.png)


### Total Number of Variants per Gene
![Gene Variants](./charts/Total_Number_of_Variants_per_Gene.png)

### Genes with Highest Conflicts
![Top Genes](./charts/Genes_With_The_Most_Conflicting_Interpretations.png)

## Tools Used
- SQLite
- Google Sheets (visualization)
- GitHub
