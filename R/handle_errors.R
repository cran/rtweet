handle_errors <- function(response) {
  if (!httr::status_code(response)) {
    return(response)
  }

  obj <- httr::content(response)
  if (has_name_(obj, "errors")) {
    l <- lapply(obj$errors, list2DF)
    errors <- do.call(rbind, l)
    return(errors)
  }
  obj
}
