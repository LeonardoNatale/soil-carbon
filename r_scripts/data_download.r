urls <- c(
  'https://gitlab.com/openlandmap/compiled-ess-point-data-sets/-/raw/master/out/rds/sol_chem.pnts_horizons.rds',
  'https://gitlab.com/openlandmap/compiled-ess-point-data-sets/-/raw/master/out/rds/sol_hydro.pnts_horizons.rds',
  'https://gitlab.com/openlandmap/compiled-ess-point-data-sets/-/raw/master/out/rds/sol_ksat.pnts_horizons.rds',
  'https://gitlab.com/openlandmap/compiled-ess-point-data-sets/-/raw/master/out/rds/pnv_biomes.pnts_sites.rds',
  'https://gitlab.com/openlandmap/compiled-ess-point-data-sets/-/raw/master/out/rds/lcv_nat.landcover.pnts_sites.rds',
  'https://gitlab.com/openlandmap/compiled-ess-point-data-sets/-/raw/master/out/rds/lcv_nat.landcover.pnts_sites_cm.rds',
  'https://gitlab.com/openlandmap/compiled-ess-point-data-sets/-/raw/master/out/rds/sol_hydro.pnts_horizons_rm.rds',
  'https://gitlab.com/openlandmap/compiled-ess-point-data-sets/-/raw/master/out/rds/pnv_biomes.pnts_sites_cm.rds'
)

transform_data_to_csv <- function(url_str){
  filename <- paste(
    "../data/",
    paste(
      stringr::str_split(
        tail(
          stringr::str_split(url_str, "/")[[1]],
          n=1
        ),
        "\\."
      )[[1]][1:2],
      collapse="_"
    ),
    ".csv",
    sep="",
    collapse=""
  )
  print(filename)
  print(file.exists(filename))
  if (!file.exists(filename)){
    data <- readRDS(url(url_str, 'rb'))
    write.csv(data, filename)
  }
}

lapply(urls, transform_data_to_csv)

data2 <- readRDS("lcv_nat.landcover.pnts_sites_cm.rds")
head(data2)
