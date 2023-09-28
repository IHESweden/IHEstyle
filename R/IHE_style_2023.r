# The ggplot2 function for the IHE style from 2023 -------------------------
#' @export
  IHEstyle2023 <- function() {
    extrafont::font_import(pattern = "trebuc.ttf", prompt = F) # Load the fonts
	extrafont::loadfonts(device = "win")
  
    return(
      list(
        ggplot2::theme( #list combining the theme itself and some settings for the plot
          panel.background = ggplot2::element_rect(color = IHEBlack, linewidth = 0.8, linetype = NULL, fill = NA),
          panel.grid.major = ggplot2::element_line(colour = "grey"), #IHE_BlueGray
          panel.grid.minor = element_blank(),
          plot.background = ggplot2::element_rect(colour = IHEBlack, linewidth = 1),   # IHEBlack
          #plot.margin=unit(c(1, 1, 1, 1), "cm"),                                      # In case we want a margin between the plot and the outer eged
          legend.position = "bottom",
          legend.key.height=unit(0.2, "cm"),                                           # The distance between the distance in the legend between the rows
          legend.spacing.x = unit(0.2, 'cm'),
          #legend.key = element_rect(fill = NA, color = NA),                           # removing the lines
          legend.title = element_blank(),
          legend.key = element_rect(colour = "transparent", fill = "white"),
          line = ggplot2::element_line(linewidth = 0.5, linetype = 1, lineend = "butt"),
          text = element_text(size = 20, family = "Trebuchet MS"),
          strip.background = element_rect(fill = NA),                                    # for facet_grid and wrap so that we have no colour behind the header
        ),
        # new list elements
        guides(colour = guide_legend(override.aes = list(size = 2))),                                  # increasing the size of the legend a bit
        scale_colour_manual(values = ColourPalette2023),
        scale_fill_manual(values = ColourPalette2023),
        removeGrid(x = TRUE, y = FALSE),
        labs(x = NULL, y = NULL, title = NULL)
      )
    )
  }
