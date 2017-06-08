#' Find variables
#'
#' Search for a pattern in the OCSLS table column names
#' @param x A pattern to search (grep) for
#' @param tables A character vector of table names to search
#'
#' @export

find_var <- function(x, tables=c("students","dates","romances","hookups")) {
    lapply(tables, function(table) {
        grep(x, names(get(table)), value=TRUE)
    })
}