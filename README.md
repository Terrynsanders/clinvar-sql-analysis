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
![Conflicting vs Consistent] Genes With The Most Conflicting Interpretations.png

### Total Number of Variants per Gene
![Gene Variants](<img width="821" height="371" alt="Total Number of Variants per Gene" src="https://github.com/user-attachments/assets/d39122e6-f6f9-4c65-9ce5-d00ec130cb2a" />
)

### Genes with Highest Conflicts
![Top Genes](<img width="961" height="468" alt="Genes With The Most Conflicting Interpretations" src="https://github.com/user-attachments/assets/447c129f-e620-412d-b264-fe6c762dd6b5" />
)

## Tools Used
- SQLite
- Google Sheets (visualization)
- GitHub
