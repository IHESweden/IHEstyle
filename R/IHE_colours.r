# Initiating the colours for IHE Style from 2019 - 2023 -----------------------------------
  #Loading IHE colour theme
  #White background
  IHE_BlueGray = rgb(red = 187, green = 210, blue = 220, maxColorValue = 255) #BBD2DC
  IHE_Blue = rgb(red = 48, green = 101, blue = 140, maxColorValue = 255) #30658C
  IHE_Orange = rgb(red = 236, green = 165, blue = 93, maxColorValue = 255) #ECA55D
  IHE_Red = rgb(red = 157, green = 28, blue = 48, maxColorValue = 255) #9D1C30
  IHE_Black = rgb(red = 7, green = 28, blue = 44, maxColorValue = 255) #071C2C
  IHE_Light_Blue = rgb(red = 125, green = 174, blue = 211, maxColorValue = 255) #7DAED3

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
