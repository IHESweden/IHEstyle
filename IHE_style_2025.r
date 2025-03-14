#' @title IHEstyle2025
#'
#' @description The ggplot2 function for the IHE style from 2025. Minor changes from IHE style 2023.
#'
#' @return Code to add to a ggplot2 plot
#'
#' @name IHEstyle2025
#'
#' @export
  IHEstyle2025 <- function() {
    return(
      list(ggplot2::theme(strip.background = element_rect(fill = NA,
                                                          colour = IHEGrey),
                          axis.line = element_line(colour = IHEBlack),
                          panel.background = element_rect(fill = "transparent",     # https://github.com/thomasp85/patchwork/issues/182
                                                          color = NA), # bg of the panel
                          plot.background = element_rect(fill = "transparent",              # "white" if we do not wan tit transparent
                                                         color = NA), # bg of the plot
                          legend.background = element_rect(fill = "transparent",
                                                           color = NA), # get rid of legend bg
                          legend.box.background = element_rect(fill = "transparent",
                                                               color = NA),
                          plot.margin = unit(c(0.5,                                         # Margins around the plot so that the text can still be there without any expand, t, r, b, l
                                               0.8,
                                               0.5,                                          # t, r, b, l
                                               0.5),
                                             "cm"),
                          panel.grid.major = ggplot2::element_line(colour = IHEGrey,
                                                                   linewidth = 0.3,
                                                                   linetype = 1,
                                                                   lineend = "butt"),
                          panel.grid.minor = element_blank(),
                          text = element_text(size = 12,
                                              family = "Trebuchet MS"),
                          axis.title.x = element_text(face = "bold",
                                                      size = 12,
                                                      margin = margin(t = 10)),
                          axis.title.y = element_text(face = "bold",
                                                      size = 12,
                                                      margin = margin(r = 10)),
                          legend.text = element_text(size = 10),
                          legend.position = "bottom",
                          legend.key.height = unit(0.2, "cm"),
                          legend.spacing.x = unit(0.2, "cm"),
                          legend.title = element_blank(),
                          legend.key = element_rect(colour = "transparent",
                                                    fill = "white")), # for facet_grid and wrap so that we have no colour behind the header

        # new list elements
        guides(colour = guide_legend(override.aes = list(size = 2))),                                  # increasing the size of the legend a bit
        scale_colour_manual(values = ColourPalette2025),
        scale_fill_manual(values = ColourPalette2025),
        removeGrid(x = TRUE,
                   y = FALSE),
        labs(title = NULL)
      )
    )
  }
