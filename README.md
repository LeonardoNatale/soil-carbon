# soil-carbon

[Paper](https://www.pnas.org/content/114/36/9575?__cf_chl_jschl_tk__=pmd_f058691333b9ea8968c99d5667424db6abbd64f9-1627461072-0-gqNtZGzNAeKjcnBszQiO#sec-10)  
[Meta-analysis Data](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/QQQM8V)  
[Hyde Dataset](https://www.pbl.nl/en/image/links/hyde)  
[Github](https://github.com/whrc/Soil-Carbon-Debt)  
[WoSIS snapshot - September 2019](https://data.isric.org/geonetwork/srv/eng/catalog.search#/metadata/ca880bd4-cff8-11e9-8046-0cc47adaa92c)

Installation Steps:
- download the WoSIS dataset from the link above and extract it in the `data/` folder
- pip install -r requirements.txt
- nbstripout --install (to avoid notebooks conflicts)
- cd r_scripts && Rscript data_download.r (to download the data [here](https://gitlab.com/openlandmap/compiled-ess-point-data-sets#soil-properties-and-classes).


## WoSIS Dataset Description

The present snapshot, referred to as ‘WoSIS snapshot - September 2019’, comprises 196,498 geo-referenced profiles originating from 173 countries.  
They represent over 832 thousand soil layers (or horizons), and over 6 million records.  
The actual number of observations for each property varies (greatly) between proﬁles and with depth, this generally depending on the objectives of the initial soil sampling programmes.  
  
The `WoSIS_2019_September` folder has the data in TSV (tab separated values) and GeoPackage format. It contains the following files:
- ReadmeFirst_WoSIS_2019dec04.pdf (546.7 KB)
- wosis_201909.gpkg (2.2 GB, same data as in the tsv)
- wosis_201909_attributes.tsv (8.7 KB)
- wosis_201909_layers_chemical.tsv (893.5 MB)
- wosis_201909_layers_physical.tsv (890.7 MB)
- wosis_201909_profiles.tsv (18.8 MB)


## Meta-analysis Dataset Description

Harmonized complilation of mostly georeferenced soil carbon stock data with a focus on finding SOC stocks under 
patches of native remnant vegetation within large agricultural regions. For most native sites, paired agricultural 
land uses were also sampled and are reported in this database.

| Column               | Description                                                                                                                         |
|----------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| Source No.           | linked to references sheet                                                                                                          |
| Pair ID              | unique ID for a pair of land use sites using first authors initials and an incrementing number                                      |
| Site ID              | unique ID for each site using Pair ID followed by letter for land use type (A = agriculture; N = native)                            |
| Location description | common name for study area/region                                                                                                   |
| State                | official municipality name                                                                                                          |
|  Country             | country                                                                                                                             |
| Latitude             | decimal degrees                                                                                                                     |
| Longitude            | decimal degrees                                                                                                                     |
| Location accuracy    | description of accuracy of coordinates                                                                                              |
| Land use descriptive | reported land use in paper                                                                                                          |
| LULC category        | land use land cover category - forest, grassland, savanna for Native vegetation state; cropping, grazing or plantation for land use |
| Native/Ag/Restored   | is the site in native state, under agriculture (cropping, grazing or planation) or restored to native vegetation                    |
| Time since LUC (yr)  | if reported, the time since land use change (years)                                                                                 |
| max depth(m)         | maximum soil sampling depth                                                                                                         |
| 10 cm SOC            | calculated stock to 10 cm                                                                                                           |
| 30 cm SOC            | calculated stock to 30 cm if sampling was deep enough                                                                               |
| 100 cm SOC           | calculated stock to 100 cm if sampling was deep enough                                                                              |
| other SOC            | calculated stock to depth given in other depth column                                                                               |
| other depth (m)      | depth for other SOC stock if there was a non-standard final depth to the soil profile                                               |
