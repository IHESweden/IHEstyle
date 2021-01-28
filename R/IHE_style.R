# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' Add IHE theme to ggplot chart
#' This function allows you to add the IHE theme to your ggplot graphics.
#' @Author: Gunnar Brådvik, email = gunnar.bradvik@ihe.se
#' @keywords IHE_style
#' @export
#' @examples
#' ggplot(mpg, aes(displ, cty, colour = class)) +
#' geom_point() +
#' IHE_style()
	
#Laddar in IHE färgschema
#Vit bakgrund
IHE_BlueGray=rgb(red=187, green=210, blue=220, maxColorValue = 255) #BBD2DC
IHE_Blue=rgb(red=48, green=101, blue=140, maxColorValue = 255) #30658C
IHE_Orange=rgb(red=236, green=165, blue=93, maxColorValue = 255) #ECA55D
IHE_Red=rgb(red=157, green=28, blue=48, maxColorValue = 255) #9D1C30
IHE_Black=rgb(red=7, green=28, blue=44, maxColorValue = 255) #071C2C
IHE_Light_Blue=rgb(red=125, green=174, blue=211, maxColorValue = 255) #7DAED3

#Ytterligare färger
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
#alla färger utom bakgrundsfärgen
Colour_Palette <- c(IHE_Blue, IHE_Orange, IHE_Red, IHE_Black, IHE_Light_Blue,
                    Dark_Green, Yellow, Purple, Pink, Brown, Lime_Yellow, Blue, Green, IHE_BlueGray, Green_Blue, Turquoise, Dark_Red, Deep_Blue, Light_Red,
                    "#1B9E77", "#D95F02", "#7570B3", "#E7298A", "#66A61E", "#E6AB02", "#A6761D")

#De sista färgerna är snodda från:
#library(RColorBrewer)
#brewer.pal(n = 8, name = "Dark2")

#Själva funktionen som används vid plottningen
IHE_style <- function() { #Lägger till "style-paketet" till ggplot
  return(list(ggplot2::theme( #list kombinerar olika objekt, här theme + ett antal andra saker
    panel.background = ggplot2::element_rect(fill = NA),
	panel.grid.major = element_line(colour = "grey"), #IHE_BlueGray
	panel.grid.minor = element_blank(),
     plot.background = ggplot2::element_rect(colour = "#000000", size = 1), #IHE_Black 
	#plot.margin=unit(c(1, 1, 1, 1), "cm"), #Om vi vill ha marginal mellan plotten och ytterkantlinjen
    legend.position = "bottom",
    legend.key.height=unit(0.2, "cm"),  #reglerar avståndet i legeden mellan raderna
    legend.spacing.x = unit(0.2, 'cm'),
    #legend.key = element_rect(fill = NA, color = NA), #tar bort linjerna
    legend.title=element_blank(),
	legend.key = element_rect(colour = "transparent", fill = "white"),
    line = element_line(size = 0.5, linetype = 1, lineend = "butt"),
    text = element_text(size=20)),
    #nya list_element
    guides(colour=guide_legend(override.aes = list(size=2))), #gör legend lite större än den annars hade varit
    scale_colour_manual(values = Colour_Palette),
    scale_fill_manual(values = Colour_Palette),
    removeGrid(x = TRUE, y = FALSE),
    #labs(colour=NULL),
    labs(x = NULL, y = NULL, title = NULL),
	border(color = "black", size = 0.8, linetype = NULL))) #använder IHEs färgset
}
