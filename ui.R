suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Coursera's Data Science Capstone: Final Project",
                   tabPanel("Next Word Predictor",
                            HTML("<strong>Author: Aditya Vikram Dash</strong>"),
                            br(),
                            HTML("<strong>Date: 25 September 2020</strong>"),
                            br(),
                          
                            # Sidebar
                            sidebarLayout(
                                sidebarPanel(
                                    helpText("This application takes your string and predict the next word to your string"),
                                    textInput("inputString", "Enter your word or partial phrase here",value = ""),
                                    helpText("Once you finished typing your word or phrase, please click on the below button NextWord to suggest next expected word for your word or phrase"),
                                    submitButton('NextWord'),
                                    br(),
                                    br(),
                                    br(),
                                    br()
                                ),
                                mainPanel(
                                    h2("The suggested next word for your word or phrase is"),
                                    verbatimTextOutput("prediction"),
                                    strong("You entered the following word or phrase as Input to the application:"),
                                    tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
                                    textOutput('text1')
                                )
                            )
                            
                   ),
                   tabPanel("Overview",
                            mainPanel(
                                includeMarkdown("Overview.md"),
                            )
                   ),
                   tabPanel("Instructions",
                            mainPanel(
                                includeMarkdown("Instructions.md")
                            )
                   )
)
)