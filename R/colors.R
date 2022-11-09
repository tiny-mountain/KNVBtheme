#' KNVB color palette
#'
#' The standard nine-color KNVB palette for line plots comprises different
#' shades of orange, blue, cyan, and gray
#'
#' @export
knvb_pal <- function() {
  values <- KNVBtheme::knvb_cols$value
  max_n <- 9
  f <- scales::manual_pal(values)
  attr(f, "max_n") <- max_n
  f
}


#' KNVB color scales
#'
#' Color scales using the KNVB colors
#'
#' @inheritParams ggplot2::scale_colour_hue
#' @rdname scale_knvb
#' @export
scale_colour_knvb <- function(...) {
  ggplot2::discrete_scale("colour", "knvb", knvb_pal(), ...)
}

#' @rdname scale_knvb
#' @export
scale_color_knvb <- scale_colour_knvb

#' @rdname scale_knvb
#' @export
scale_fill_knvb <- function(...) {
  ggplot2::discrete_scale("fill", "knvb", knvb_pal(), ...)
}
