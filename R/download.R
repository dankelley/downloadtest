#' Return the number of lines in a file downloaded to a temp dir.
#'
#' Download the file to a local directory, returning the number of
#' lines in that file.  This is a toy function, to shed light on
#' https://github.com/r-lib/pkgdown/issues/2774.
#'
#' @param url ...
#'
#' @param dir ...
#'
#' @examples
#' dir <- tempdir()
#' url <- "https://raw.githubusercontent.com/dankelley/dod/main/NEWS.md"
#' linesInRemoteFile(url, dir)
#' unlink(dir, recursive = TRUE)
#'
#' @return return the number of lines in the file
#' @export
#' @importFrom utils download.file
linesInRemoteFile <- function(url, dir) {
    file <- file.path(dir, "NEWS.md")
    cat("url:  '", url, "'\n", sep = "")
    cat("file: '", url, "'\n", sep = "")
    download.file(url, file)
    length(readLines(file))
}
