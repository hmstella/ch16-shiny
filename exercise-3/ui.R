# UI for scatterplot
library(shiny)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
ui <- fluidPage(
  # A page header
  h1("MPG Dataset Exploration"),
  
  # Add a select input for the x variable
  selectInput("x_var", "X Variable", choices = select_values, selected = "displ"),
  
  # Add a select input for the y variable
  selectInput("y_var", "Y Variable", choices = select_values, selected = "cyl"),

  # Add a sliderInput to set the size of each point
  sliderInput("size", "Size of point", min = 1, max = 10, value = 5),

  # Add a selectInput that allows you to select a color from a list of choices
  selectInput("color", "Color", choices = c("red", "blue", "yellow")),

  plotOutput("scatter")
  
  # Plot the output with the name "scatter"
)
shinyUI(ui)