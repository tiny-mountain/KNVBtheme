## code to prepare `my_pkg_data` dataset goes here
knvb_cols <- data.frame(
  name = c(
    "donkeroranje_nieuw_0",
    "donkerblauw_0",
    "turkoois_0",
    "donkeroranje_nieuw_1",
    "donkerblauw_1",
    "turkoois_1",
    "donkeroranje_1",
    "licht_grijs",
    "turkoois_5",
    "donkeroranje_0",
    "blauw_0",
    "donkeroranje_nieuw_5",
    "donkerblauw_5",
    "donkeroranje_5",
    "white",
    "groen",
    "rood",
    "donker_grijs"
  ),
  value = c(
    "#eb6209",
    "#253780",
    "#00AADB",
    "#f39655",
    "#C9D1F0",
    "#C5F2FF",
    "#bd4a0a",
    "#F2F2F2",
    "#00556D",
    "#F36C21",
    "#00a5db",
    "#fac59e",
    "#131B40",
    "#f79c6a",
    "#ffffff",
    "#008000",
    "#ff0000",
    "#7F7F7F"
  )
)

usethis::use_data(knvb_cols, overwrite = TRUE)

knvb_cols_ls <- knvb_cols$value %>%
  as.list() %>%
  setNames(knvb_cols$name)

usethis::use_data(knvb_cols_ls, overwrite = TRUE)

