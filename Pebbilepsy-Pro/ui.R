library(shiny)
library(shinyapps)

shinyUI(fluidPage(
  titlePanel("Pebilepsy-Log History"),
  sidebarLayout(
    sidebarPanel(
      fileInput('file1', 'Patient: Lorie Dolan ',
                accept=c('text/csv', 
                         'text/comma-separated-values,text/plain', 
                         '.csv')),
      
      tags$hr(),
      checkboxInput('header', 'Header', TRUE),
      radioButtons('sep', 'Separator',
                   c(Comma=',',
                     Semicolon=';',
                     Tab='\t'),
                   ','),
      radioButtons('quote', 'Quote',
                   c(None='',
                     'Double Quote'='"',
                     'Single Quote'="'"),
                   '"')
    ),
    mainPanel(
      tableOutput('contents')
    )
  )
))