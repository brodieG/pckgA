setOldClass("file")
setClassUnion("fileOrNULL", c("file", "NULL"))
setClass("dummy", list(a="fileOrNULL"))

#' Dummy function in namespaces that creates dummy object
#' 
#' Only purpose of this is to attempt to use a class with a slot "fileOrNULL"
#' 
#' @export
#' @return TRUE

makeDummy <- function() {
  new("dummy", a=file(tempfile()))
}