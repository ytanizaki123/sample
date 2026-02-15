  library(shiny)
  library(shinyMobile)

#Sys.setenv(SAMPLE_KEY = "testit")
sample_key <- Sys.getenv("SAMPLE_KEY")

    ui = f7Page(
      title = "Links",
      f7SingleLayout(
        navbar = f7Navbar(title = "f7Link"),
        f7Link(label = "Google", href = "https://www.google.com"),
        f7Link(href = "https://www.twitter.com", icon = f7Icon("bolt_fill")),
        f7Text("search_word61", "キー",
	           value=sample_key, placeholder="",
	           style = list(
                 outline = TRUE
               )
        )
      )
    )
    server = function(input, output) {}

shinyApp(ui, server)

