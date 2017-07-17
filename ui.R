#ui Dashboard
library(shinydashboard)

dashboardPage(
dashboardHeader(title="Anaheim Dashboard"),
dashboardSidebar(
  sidebarMenu(
    menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
    menuItem("widget", tabName = "widgets", icon = icon("th")),
    menuItem("widget2", tabName = "widgets2", icon = icon("th"))
  )
),
  
dashboardBody(
    tabItems(
    #First Tab contents
    tabItem(tabName = "dashboard", 
    #some controllers and output plots
    fluidRow(
      box(plotOutput("plot01")),
      box(
        title="Selector",
        sliderInput(
          inputId="slider01",
                  label = "Number of Days",
                  min= 1,
                  max= 100,
                  value= 50)
        ) #for tabItem
      )
    ),
    
    #Second Tab contents
    tabItem(tabName = "widgets",
            h2("Data Contents for Station 1")
    ), #for 2nd tabItem
    #Third Tab contents
    tabItem(tabName = "widgets2",
            h2("Data Contents for Station 2")
    ) #for 3nd tabItem
    )#close tabitems
  ) #close Body
) #closePage
