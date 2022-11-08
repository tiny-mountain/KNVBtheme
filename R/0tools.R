#' @importFrom dplyr %>%

.onLoad <- function(libname, pkgname){

  showtext::showtext_auto()

  font <- system.file("font", package = "KNVBtheme") %>% list.files(full.names = T)
  font_name <- system.file("font", package = "KNVBtheme") %>% list.files(full.names = F)
  font_name <- gsub("_von_Wesseling|.otf", "", font_name)
  font_df <- data.frame(name = font_name, path = font)

  # load fonts for showtext
  mapply(sysfonts::font_add, font_df$name, font_df$path) %>%
    invisible()
  }


