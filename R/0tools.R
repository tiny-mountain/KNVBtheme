#' @importFrom dplyr %>%

.onLoad <- function(libname, pkgname){

  showtext::showtext_auto()

  # set names for fonts to be used in graphs, combine with paths
  font <- list.files("inst/font") %>%
    gsub("_von_Wesseling|.otf", "", .) %>%
    data.frame(name = ., path = paste0("inst/font/", list.files("inst/font")))

  # load fonts for showtext
  mapply(sysfonts::font_add, font$name, font$path) %>%
    invisible()
  }
