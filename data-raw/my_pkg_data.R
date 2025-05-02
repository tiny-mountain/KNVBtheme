## code to prepare `my_pkg_data` dataset goes here
knvb_cols <- data.frame(
  name = c(
    "oranje_1",
    "mistwhite_1",
    "groenblauw_1",
    "groen_blauw_2",
    "oranje_2",
    "mistwhite_2",
    "oranje_3",
    "mistwhite_3"
  ),
  value = c(
    "#ff6000",
    "#AFD5D2",
    "#2C7075",
    "#66AAA2",
    "#F9843C",
    "#CAE3E1",
    "#F3A874",
    "#D8EBE6"

  )
)

usethis::use_data(knvb_cols, overwrite = TRUE)

knvb_cols_ls <- knvb_cols$value %>%
  as.list() %>%
  setNames(knvb_cols$name)

usethis::use_data(knvb_cols_ls, overwrite = TRUE)

