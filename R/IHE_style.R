#' @title IHEstyle
#' @name IHEstyle
#' @description This package allows you to add the IHE theme to your ggplot graphics. Note that we have saved the old styles in the package for backwards comparability. The current style is IHEStyle2023.
#' @usage Add + IHE_style to your ggplot2 function in order to use the package.
#' @format
#' @author Gunnar Brådvik, email = gunnar.bradvik@ihe.se
#' @keywords IHE_style
#' @import
#' ggplot2
#' ggExtra
#' ggthemes
#' extrafont
#' @examples
#' library(ggplot2)
#' library(ggExtra)
#' library(ggthemes)
#' library(tidyverse)
#' library(extrafont)
#' ggplot2::ggplot(mpg, aes(displ, cty, colour = class)) +
#' geom_point(size = 3) +
#' IHE_style()

# Initiating the colours for IHE Style from 2019 - 2023 -----------------------------------
  #Loading IHE colour theme
  #White background
  IHE_BlueGray=rgb(red=187, green=210, blue=220, maxColorValue = 255) #BBD2DC
  IHE_Blue=rgb(red=48, green=101, blue=140, maxColorValue = 255) #30658C
  IHE_Orange=rgb(red=236, green=165, blue=93, maxColorValue = 255) #ECA55D
  IHE_Red=rgb(red=157, green=28, blue=48, maxColorValue = 255) #9D1C30
  IHE_Black=rgb(red=7, green=28, blue=44, maxColorValue = 255) #071C2C
  IHE_Light_Blue=rgb(red=125, green=174, blue=211, maxColorValue = 255) #7DAED3

  #Additional colours for graphs with many series
  Blue = "#0033FF"
  Deep_Blue = "#3366FF"
  Purple = "#660099"
  Pink = "#DB8CF0"
  Brown = "#996633"
  Lime_Yellow = "#CCCC00"
  Yellow = "#F8F700"
  Light_Yellow = "#FFFDAB"
  Dark_Green = "#429457"
  Green = "#7AC481"
  Green_Blue = "#006b6b"
  Turquoise = "#009999"
  Dark_Red = "#AC0000"
  Light_Red = "#E20000"

  #Bakground_Colour <- IHE_BlueGray
  #all colours, except for the background colour
  Colour_Palette <- c(IHE_Blue, IHE_Orange, IHE_Red, IHE_Black, IHE_Light_Blue,
                      Dark_Green, Yellow, Purple, Pink, Brown, Lime_Yellow, Blue, Green, IHE_BlueGray, Green_Blue, Turquoise, Dark_Red, Deep_Blue, Light_Red,
                      "#1B9E77", "#D95F02", "#7570B3", "#E7298A", "#66A61E", "#E6AB02", "#A6761D")

  #The last colours come from:
  #library(RColorBrewer)
  #brewer.pal(n = 8, name = "Dark2")


# Initiating the colours for IHE Style from 2023 -------------------------
  # Loading IHE colour theme
  # White background
  maxColVal <- 255

  # Primary colours
    IHEDeepBlue <- rgb(red = 23, green = 23, blue = 75, maxColorValue = maxColVal)
    IHERed <- rgb(red = 178, green = 59, blue = 7, maxColorValue = maxColVal)
    IHEGrey <- rgb(red = 207, green = 195, blue = 188, maxColorValue = maxColVal)
    IHELightBlue <- rgb(red = 163, green = 200, blue = 231, maxColorValue = maxColVal)
    IHEGreen <- rgb(red = 148, green = 171, blue = 104, maxColorValue = maxColVal)
    IHEYellow <- rgb(red = 248, green = 185, blue = 11, maxColorValue = maxColVal)

  # Secondary colours
    IHEBlue <- rgb(red = 42, green = 90, blue = 150, maxColorValue = maxColVal)
    IHEPurple <- rgb(red = 119, green = 52, blue = 139, maxColorValue = maxColVal)
    IHEPink <- rgb(red = 231, green = 58, blue = 101, maxColorValue = maxColVal)
    IHEGreen2 <- rgb(red = 19, green = 165, blue = 56, maxColorValue = maxColVal)
    IHELightBlue2 <- rgb(red = 0, green = 159, blue = 227, maxColorValue = maxColVal)
    IHEBlack <- rgb(red = 0, green = 0, blue = 0, maxColorValue = maxColVal)

  # The order of the colours
    IHEPrimaryColours <- c(IHEDeepBlue, IHERed, IHELightBlue, IHEBlack, IHEGreen, IHEYellow)
    IHESecondaryColours <- c(IHEBlue, IHEPurple, IHEPink, IHEGreen2, IHELightBlue2, IHEGrey)

  # Additional colours for graphs with many series
    Blue = "#0033FF"
    Deep_Blue = "#3366FF"
    Purple = "#660099"
    Pink = "#DB8CF0"
    Brown = "#996633"
    Lime_Yellow = "#CCCC00"
    Yellow = "#F8F700"
    Light_Yellow = "#FFFDAB"
    Dark_Green = "#429457"
    Green = "#7AC481"
    Green_Blue = "#006b6b"
    Turquoise = "#009999"
    Dark_Red = "#AC0000"
    Light_Red = "#E20000"

  # IHE primary + IHE secondary + additional colours
    ColourPalette2023 <- c(IHEPrimaryColours, IHESecondaryColours,
                          Dark_Green, Yellow, Purple, Pink, Brown, Lime_Yellow, Blue, Green, Green_Blue, Turquoise, Dark_Red, Deep_Blue, Light_Red,
                          "#1B9E77", "#D95F02", "#7570B3", "#E7298A", "#66A61E", "#E6AB02", "#A6761D")

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

# The ggplot2 function for the IHE style from 2023 -------------------------

  #' @export
    font_import()
    loadfonts(device = "win")

  IHEstyle2023 <- function() {
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
