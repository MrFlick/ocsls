library(tibble)
library(purrr)

indir <- "~/../Downloads/ocsls/ocsls/Results/OCSLS_Codebook/data"

files <- c("students","hookups","dates","romances")

infiles <- file.path(indir, paste0(files,".rds"))
outfiles <- file.path("data", paste0(files,".rda"))

saveas <- function(x, name, file, ...) {
  assign(name, x)
  save(list=name, file=file, ...)
  file
}

clean_non_ascii <- function(x) {
  cols <- c("partner.race.specify", "date..partner.race.specify")
  for(col in cols) {
    if(col %in% names(x) && is.factor(x[[col]])) {
      levels(x[[col]]) <- stringi::stri_trans_general(levels(x[[col]]), "latin-ascii")
    }
  }
  x
}

clean_dates <- function(x) {
  cols <- c("server.year", "server.month", "server.day",
      "survey.imputed.year", "survey.imputed.day")
  for(col in cols) {
    if(col %in% names(x) && is.character(x[[col]])) {
      x[[col]] <- as.integer(x[[col]])
    }
  }
  x
}

map(infiles, readRDS) %>%
  map(as_tibble) %>%
  map(clean_non_ascii) %>%
  map(clean_dates) %>%
  list(name=files, file=outfiles) %>%
  pmap(saveas, compress=TRUE)
