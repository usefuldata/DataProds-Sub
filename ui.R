shinyUI(pageWithSidebar(
  headerPanel("Unmarried Bachelors"),
  sidebarPanel(
    numericInput('Year', 'Enter Year', 2020, min = 2015, max = 2050, step = 1),
    checkboxGroupInput("Country", "Select Country",
                       c("China" = 1,
                         "India " = 2,
                         "North America" = 3,
                         "Europe" = 4,
                         "Africa" = 5,
                         "Middle East" = 6,
                         "Oceanea" = 7,
                         "Russia/Post Soviet" = 8,
                         "South East Asia (Excl. India)" = 9,
                         "Asia" = 10,
                         "South America" =11,
                         "West Indies" = 12,
                         "North Pole Icelands" = 13,
                         "Other small Islands" =14
                         ))

  ),
  mainPanel(
    h2("Select Continent/Country and Enter Year"),
    h3("We'll tell you how many total and how many per million Males will be unlucky to find no partner in the year you've selected"),
    h6("Sex ratio is going to be a real big problem in the coming days. 
       To raise the alarm, it's an APP which shows the affect of Increase of Sex Ratio.
       The Bar plot shows # Males per million in the selected region will NOT be able to find Partner, assuming that 
       when no other option a 42 years old women will not hesitate to accept the Marriage invitation of
       an 18 year old Just eligible bachelor and vice versa."),
    h1(""),
    h4("Male Bachelors per million"),
    plotOutput('newBar'),
    h4("Total Number of Male Bachelors (in Thousands)"),
    verbatimTextOutput("prediction")
  )
))
