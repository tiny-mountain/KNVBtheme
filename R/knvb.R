#' @title KNVB theme
#'
#' @description Custom [ggplot2] theme used in all KNVB figures. Created by KNVB
#'   research department.
#' @usage
#' theme_knvb(
#'            base_size = 11,
#'            ...
#' )
#'
#' @param base_size base font size, given in pts.
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


theme_knvb <- function(base_size = 11,
                       ...){

  ret <- ggplot2::theme_grey(base_size = base_size,
                             ...) %+replace%
    ggplot2::theme(

      # add margin around plot
      plot.margin = grid::unit(rep(10, 4), "pt"),

      # set size and color of grid lines
      panel.grid.major = ggplot2::element_line(color = "gray65", linewidth = 0.25),
      panel.grid.minor = ggplot2::element_blank(),

      # set size and color of axis.lines
      axis.line.x = ggplot2::element_line(color = "gray30", linewidth = ggplot2::rel(1.25)),
      axis.line.y = ggplot2::element_line(color = "gray30", linewidth = ggplot2::rel(1.25)),

      axis.ticks = ggplot2::element_line(color = "gray65", linewidth = 0.25),
      axis.ticks.length = grid::unit(15, "pt"),

      # adjust panel background  and remove border
      panel.background =  ggplot2::element_rect(fill = "transparent", color = NA),
      panel.border = ggplot2::element_blank(),
      panel.ontop = F,

      # modify the bottom margins of the title and subtitle
      plot.title = ggplot2::element_text(
        size = ggplot2::rel(1.75),
        colour = "black",
        hjust = 0,
        margin = ggplot2::margin(b = 10, unit = "pt")
      ),
      plot.subtitle = ggplot2::element_text(
        size = ggplot2::rel(1.35),
        colour = "black",
        hjust = 0,
        margin = ggplot2::margin(b = 10, unit = "pt")
      ),

      plot.caption = ggplot2::element_text(
        size = ggplot2::rel(1),
        hjust = 1
      ),

      # adjust legend
      legend.position = "top",
      legend.background = ggplot2::element_blank(),

      legend.key = ggplot2::element_rect(fill = "transparent",
                                         color = NA),

      legend.title.align = 1,
      legend.box.just = "left",
      legend.box.spacing =  grid::unit(2.5, "pt"),
      #legend.spacing.x =  grid::unit(0.25, "cm"),

      legend.text = ggplot2::element_text(size = ggplot2::rel(1),
                                          color = "grey40"),
      legend.title = ggplot2::element_text(size = ggplot2::rel(1.1),
                                           color = "black"),
      # # #legend.text.align = 1,
      # legend.text = element_text(lineheight = 10,
      #                             size = rel(.8),
      #                             #margin = unit(c(0, -1, 0, 0), "cm")
      # )
      # legend.title = element_text(lineheight = 2.5,
      #                              size = rel(1)),

      # facet labels
      strip.background = ggplot2::element_rect(fill = "transparent",
                                               color = NA),
      strip.placement = "outside",

      # Adjust text size and axis title position
      axis.title.x = ggplot2::element_text(
        size = ggplot2::rel(1.2),
        colour = "black",
        margin = ggplot2::margin(t = 10)
      ),
      axis.title.y = ggplot2::element_text(
        size = ggplot2::rel(1.2),
        colour = "black",
        margin = ggplot2::margin(r = 15),
        angle = 90
      ),
      axis.text = ggplot2::element_text(size = ggplot2::rel(1.1), colour = "gray60")
    )

  return(ret)
}

