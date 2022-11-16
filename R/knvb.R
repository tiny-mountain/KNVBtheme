#' @title KNVB theme
#'
#' @description Custom [ggplot2] theme used in all KNVB figures. Created by KNVB
#'   research department.
#' @usage
#' theme_knvb(
#'            base_size = 12,
#'            base_family = "Baron_Book",
#'            y_grid = T,
#'            x_grid = T,
#'            ...
#' )
#'
#' @param base_size base font size, given in pts.
#' @param base_family base font family
#' @param y_grid logical. Indicate whether you want to draw major and minor
#'   y-axis grid lines
#' @param x_grid logical. Indicate whether you want to draw major and minor
#'   x-axis grid lines
#' @param ... potential further arguments passed to [theme_grey()]
#'
#' @importFrom ggplot2 %+replace%
#'
#' @examples
#' library(ggplot2)
#'
#' mtcars2 <- within(mtcars, {
#'   vs <- factor(vs, labels = c("V-shaped", "Straight"))
#'   am <- factor(am, labels = c("Automatic", "Manual"))
#'   cyl  <- factor(cyl)
#'   gear <- factor(gear)
#' })
#'
#' p1 <- ggplot(mtcars2) +
#'   geom_point(aes(x = wt, y = mpg, colour = gear)) +
#'   labs(
#'     title = "Fuel economy declines as weight increases",
#'     subtitle = "(1973-74)",
#'     caption = "Data from the 1974 Motor Trend US magazine.",
#'     x = "Weight (1000 lbs)",
#'     y = "Fuel economy (mpg)",
#'     colour = "Gears"
#'   )
#'
#' p1 + theme_knvb()
#'
#' @export
#'

theme_knvb <- function(base_size = 12,
                       base_family = "Baron_Book",
                       y_grid = T,
                       x_grid = T,
                       ...){

  ret <- ggplot2::theme_grey(base_size = base_size,
                             base_family = base_family,
                             ...) %+replace%
    ggplot2::theme(

      # add margin around plot
      plot.margin = grid::unit(rep(0.5, 4), "cm"),

      # set size and color of grid lines
      panel.grid.major = ggplot2::element_line(color = "gray60", size = 0.25),
      panel.grid.minor = ggplot2::element_line(color = "gray65", size = 0.1),

      # adjust panel background  and remove border
      panel.background =  ggplot2::element_rect(fill = "transparent", color = NA),
      panel.border = ggplot2::element_blank(),
      panel.ontop = F,

      # set axis lines and remove ticks
      axis.line = ggplot2::element_line(color = "#3C3C3C", size = 0.5),
      axis.ticks = ggplot2::element_blank(),

      # modify the bottom margins of the title and subtitle
      plot.title = ggplot2::element_text(
        family = "Baron_Bold",
        size = ggplot2::rel(2),
        colour = "#3C3C3C",
        hjust = 0,
        margin = ggplot2::margin(b = 10)
      ),
      plot.subtitle = ggplot2::element_text(
        family = "Baron_Book",
        size = ggplot2::rel(1.5),
        colour = "#808082",
        hjust = 0,
        margin = ggplot2::margin(b = 10)
      ),

      plot.caption = ggplot2::element_text(
        family = "Baron_Light",
        size = ggplot2::rel(.92),
        hjust = 1
      ),

      # adjust legend
      legend.position = "top",
      legend.direction = "horizontal",
      legend.background = ggplot2::element_blank(),

      legend.key = ggplot2::element_rect(fill = "transparent",
                                         color = NA),

      legend.title.align = 1,
      legend.box.just = "left",
      legend.box.spacing =  grid::unit(0.25, "cm"),
      legend.spacing.x =  grid::unit(0.25, "cm"),

      legend.text = ggplot2::element_text(size = ggplot2::rel(.92),
                                          color = "#3C3C3C"),
      legend.title = ggplot2::element_text(size = ggplot2::rel(1),
                                           color = "#3C3C3C"),
      # # #legend.text.align = 1,
      # legend.text = element_text(lineheight = 10,
      #                             size = rel(.8),
      #                             #margin = unit(c(0, -1, 0, 0), "cm")
      # )
      # legend.title = element_text(lineheight = 2.5,
      #                              size = rel(1)),

      # strip background
      strip.background = ggplot2::element_rect(fill = "transparent",
                                               color = NA),
      strip.placement = "outside",

      # Adjust text size and axis title position
      axis.title.x = ggplot2::element_text(family = "Baron_Bold",
                                           size = ggplot2::rel(1.2),
                                           colour = "#3C3C3C",
                                           margin = ggplot2::margin(t = 5)),
      axis.title.y = ggplot2::element_text(family = "Baron_Bold",
                                           size = ggplot2::rel(1.2),
                                           colour = "#3C3C3C",
                                           margin = ggplot2::margin(r = 10),
                                           angle = 90),
      axis.text = ggplot2::element_text(size = ggplot2::rel(.96), colour = "#3C3C3C"))



  if(y_grid == F){
    ret <- ret + ggplot2::theme(
      panel.grid.major.y = ggplot2::element_blank(),
      panel.grid.minor.y = ggplot2::element_blank()
    )
  }
  if(x_grid == F){
    ret <- ret + ggplot2::theme(
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.minor.x = ggplot2::element_blank()
    )
  }

  return(ret)
}

