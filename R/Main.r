#' @title IHEstyle
#' @name IHEstyle
#' @description This package allows you to add the IHE theme to your ggplot graphics. Note that we have saved the old styles in the package for backwards comparability. The current style is IHEStyle2023.
#' @usage Add + IHEstyle2023 to your ggplot2 function in order to use the package.
##### @format
#' @author Gunnar Brådvik, email = gunnar.bradvik@ihe.se
#' @keywords IHEstyle2023
#' @import
#' ggplot2
#' ggExtra
#' ggthemes
#' extrafont
#' @examples
#' library(ggplot2)
#' library(ggExtra)
#' library(ggthemes)
#' # library(tidyverse)
#' library(extrafont)
#' ggplot2::ggplot(mpg, aes(displ, cty, colour = class)) +
#' geom_point(size = 3) +
#' IHEstyle2023()

# Import fonts needed for the package -------------
    #install.packages("extrafont")
    #library(extrafont)
    #extrafont::font_import(prompt = FALSE)
    extrafont::font_import(pattern = "trebuc.ttf", prompt = F)
    extrafont::loadfonts(device = "win")
