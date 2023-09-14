# The ggplot function for the IHE style from 2019 - 2023 -------------------------
  #' @export
    IHE_style <- function() {
      return(list(ggplot2::theme( #list combining the theme itself and some settings for the plot
                                  panel.background = ggplot2::element_rect(color = IHE_Black, size = 0.8, linetype = NULL, fill = NA),
                                	panel.grid.major = element_line(colour = "grey"), #IHE_BlueGray
                                	panel.grid.minor = element_blank(),
                                  plot.background = ggplot2::element_rect(colour = "#000000", size = 1),       # IHE_Black
                              	  #plot.margin=unit(c(1, 1, 1, 1), "cm"),                                      # In case we want a margin between the plot and the outer eged
                                  legend.position = "bottom",
                                  legend.key.height = unit(0.2, "cm"),                                           # The distance between the distance in the legend between the rows
                                  legend.spacing.x = unit(0.2, 'cm'),
                                  #legend.key = element_rect(fill = NA, color = NA),                           # removing the lines
                                  legend.title = element_blank(),
                              	  legend.key = element_rect(colour = "transparent", fill = "white"),
                                  line = element_line(size = 0.5, linetype = 1, lineend = "butt"),
                                  text = element_text(size = 20),
                                  strip.background = element_rect(fill = NA),                                    # for facet_grid and wrap so that we have no colour behind the header
                                  ),

                  #new list elements
                  guides(colour=guide_legend(override.aes = list(size = 2))),                                    # increasing the size of the legend a bit
                  scale_colour_manual(values = Colour_Palette),
                  scale_fill_manual(values = Colour_Palette),
                  removeGrid(x = TRUE, y = FALSE),
                  labs(x = NULL, y = NULL, title = NULL)
                )
           )
    }
