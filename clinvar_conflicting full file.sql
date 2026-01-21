--Adding  column(VARIANTS) to conflicts table--
Alter Table clinvar_conflicting
Add column VARIANT TEXT;

--Running UPDATE to fill new column (VARIANTS)--

UPDATE clinvar_conflicting
SET VARIANT = coalesce (CAST (CHROM as TEXT) ,' NA ') ||' : '||
coalesce (CAST (POS as TEXT) ,' NA ') ||' : '||
coalesce (REF , ' NA ' ) ||' > '||
coalesce (ALT , ' NA ' ) ;

SELECT VARIANT from clinvar_conflicting;

--Determine how many variants fall into each clinical prediction--

Select coalesce (PolyPhen, ' not_reported' ) as Predictions,
Count(*) as num_variants
From clinvar_conflicting 
GROUP BY Predictions
ORDER by num_variants DESC;

--which genes have the highesyt number of variants--

SELECT coalesce (SYMBOL, ' undetermined ') as GENES,
count(*) as num_variants
FROM clinvar_conflicting
group by genes
ORDER BY num_variants DESC;

--How many variants have conflicting interpretations and how many have consistent. Consistent class shows that both labs came to the same conclusion while conflicting means they came to different conclusions--

SELECT  
CASE
	WHEN CLASS = 0 then 'consistent'
	WHEN CLASS = 1 then 'conflicting'
ELSE 'unknown'
END as class_text,
count(*) as num_variant
FROM clinvar_conflicting
GROUP BY class_text;

--Which GENES have the most conflicting classifications--

SELECT coalesce (SYMBOL, 'Unknown') as GENES,
count (*) as conflicting_class
from clinvar_conflicting
WHERE CLASS = 1
GROUP BY GENES
ORDER BY conflicting_class DESC;

