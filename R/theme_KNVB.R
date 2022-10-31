theme_knvb <- function(base_size = 12,
                       base_family = "Arial"){

  ggplot2::theme_grey(base_size = base_size,
                      base_family = base_family) %+replace%
    ggplot2::theme(

      # add margin around plot
      plot.margin = grid::unit(rep(0.5, 4), "cm"),

      # set size and color of grid lines
      panel.grid.major = element_line(color = "gray60", size = 0.25),
      panel.grid.minor = element_line(color = "gray65", size = 0.1),

      # adjust panel background  and remove border
      panel.background =  ggplot2::element_rect(fill = "transparent", color = NA),
      panel.border = ggplot2::element_blank(),
      panel.ontop = F,

      # set axis lines and remove ticks
      axis.line = ggplot2::element_line(color = "#3C3C3C", size = 0.5),
      axis.ticks = ggplot2::element_blank(),

      # modify the bottom margins of the title and subtitle
      plot.title = ggplot2::element_text(size = rel(2), colour = "#3C3C3C",
                                         hjust = 0,
                                         margin = ggplot2::margin(b = 10)),
      plot.subtitle = ggplot2::element_text(size = ggplot2::rel(1.5), colour = "#A0A0A3",
                                            hjust = 0,
                                            margin = ggplot2::margin(b = 10)),

      # adjust legend
      legend.position = "top",
      legend.direction = "horizontal",
      legend.background = element_blank(),

      legend.key = element_rect(fill = "transparent",
                                color = NA),

      legend.title.align = 1,
      legend.box.just = "left",
      legend.box.spacing =  unit(0.25, "cm"),
      legend.spacing.x =  unit(0.25, "cm"),

      legend.text = element_text(size = rel(.9), color = "#3C3C3C"),
      legend.title = element_text(size = rel(1), color = "#3C3C3C"),
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
      axis.title.x = ggplot2::element_text(size = rel(1.2),
                                           colour = "#3C3C3C",
                                           margin = margin(t = 5)),
      axis.title.y = ggplot2::element_text(size = rel(1.2),
                                           colour = "#3C3C3C",
                                           margin = margin(r = 10),
                                           angle = 90),
      axis.text = ggplot2::element_text(size = rel(.9), colour = "#3C3C3C")
    )

}
