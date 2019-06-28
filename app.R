library( shiny )

params <- list( pretest = list( min = 0.01, max = 100-0.01, step = 0.01, value = 10, label = "Teszt előtti valószínűség [%]" ),
                sens = list( min = 0.1, max = 100-0.1, step = 0.1, value = 90, label = "Szenzitivitás [%]" ),
                spec = list( min = 0.1, max = 100-0.1, step = 0.1, value = 99, label = "Specificitás [%]" ) )
paramslim <- list( pretest = list( min = 0, max = 100, step = 0.01, value = c( 1, 20 ),
                                   label = "Teszt előtti valószínűség tengely határai" ),
                   sens = list( min = 0, max = 100, step = 0.1, value = c( 90, 100 ), label = "Szenzitivitás tengely határai" ),
                   spec = list( min = 0, max = 100, step = 0.1, value = c( 90, 100 ), label = "Specificitás tengely határai" ) )

ui <- fluidPage(
    
    theme = "owntheme.css",
    
    tags$head( 
        tags$meta( name = "description", content = paste0( "Egészségügyi szűrőprogramok, orvosi tesztek ",
                                                           "eredményességének vizsgálatát lehetővé tevő alkalmazás. ",
                                                           "Írta: Ferenci Tamás." ) ),
        tags$meta( property = "og:title", content = "Egészségügyi szűrőprogramok, orvosi tesztek eredményességének vizsgálata" ),
        tags$meta( property = "og:type", content = "website" ),
        tags$meta( property = "og:locale", content = "hu_HU" ),
        tags$meta( property = "og:url",
                   content = "http://research.physcon.uni-obuda.hu/OrvosiSzures/" ),
        tags$meta( property = "og:image",
                   content = "http://research.physcon.uni-obuda.hu/OrvosiSzures_Pelda.png" ),
        tags$meta( property = "og:description", content = paste0( "Egészségügyi szűrőprogramok, orvosi tesztek ",
                                                                  "eredményességének vizsgálatát lehetővé tevő alkalmazás. ",
                                                                  "Írta: Ferenci Tamás." ) ),
        tags$meta( name = "DC.Title", content = "Egészségügyi szűrőprogramok, orvosi tesztek eredményességének vizsgálata" ),
        tags$meta( name = "DC.Creator", content = "Ferenci Tamás" ),
        tags$meta( name = "DC.Subject", content = "orvosi szűrés" ),
        tags$meta( name = "DC.Description", content = paste0( "Egészségügyi szűrőprogramok, orvosi tesztek ",
                                                              "eredményességének vizsgálatát lehetővé tevő alkalmazás. " ) ),
        tags$meta( name = "DC.Publisher",
                   content = "http://research.physcon.uni-obuda.hu/OrvosiSzures/" ),
        tags$meta( name = "DC.Contributor", content = "Ferenci Tamás" ),
        tags$meta( name = "DC.Language", content = "hu_HU" )
    ),
    
    tags$div( id="fb-root" ),
    tags$script( HTML( "(function(d, s, id) {
                     var js, fjs = d.getElementsByTagName(s)[0];
                     if (d.getElementById(id)) return;
                     js = d.createElement(s); js.id = id;
                     js.src = 'https://connect.facebook.net/hu_HU/sdk.js#xfbml=1&version=v2.12';
                     fjs.parentNode.insertBefore(js, fjs);
                     }(document, 'script', 'facebook-jssdk'));" ) ),
    
    tags$style( ".shiny-file-input-progress {display: none}" ),
    
    titlePanel( "Egészségügyi szűrőprogramok, orvosi tesztek eredményességének vizsgálata" ),
    
    p( "A program használatát részletesen bemutató súgó, valamint a technikai részletek",
       a( "itt", href = "https://github.com/tamas-ferenci/OrvosiSzures",
          target = "_blank" ), "olvashatóak el." ),
    div( class="fb-like",
         "data-href"="http://research.physcon.uni-obuda.hu/OrvosiSzures/",
         "data-layout"="standard", "data-action"="like", "data-size"="small",
         "data-show-faces"="true", "data-share"="true"), p(),
    
    sidebarLayout(
        sidebarPanel(
            selectInput( "type", "Beállítandó változó", c( `Teszt előtti valószínűség` = "pretest",
                                                           `Szenzitivitás` = "sens", `Specificitás` = "spec" ) ),
            do.call( sliderInput, c( inputId = "slider", params$pretest ) ),
            do.call( numericInput, c( inputId = "sliderNumeric", params$pretest[ names( params$pretest )!="label" ],
                                      label = "" ) ),
            downloadButton( "DownloadFigPDF", "Az ábra letöltése (PDF)" ),
            downloadButton( "DownloadFigPNG", "Az ábra letöltése (PNG)" ),
            checkboxInput( "advanced", "Speciális beállítások" ),
            conditionalPanel( "input.advanced==1",
                              do.call( sliderInput, c( inputId = "xlimit", paramslim$sens ) ),
                              do.call( sliderInput, c( inputId = "ylimit", paramslim$spec ) ),
                              checkboxInput( "flip", "Tengelyek megfordítása" ),
                              checkboxInput( "xlog", "Vízszintes tengely logaritmikus" ),
                              checkboxInput( "ylog", "Függőleges tengely logaritmikus" ),
                              checkboxInput( "showloc", "Lekérdezett pont megjelenítése" ),
                              conditionalPanel( "input.showloc==1",
                                                numericInput( "xloc", "Lekérdezett szenzitivitás [%]", 95, 0, 100, 0.1 ),
                                                numericInput( "yloc", "Lekérdezett specificitás [%]", 95, 0, 100, 0.1 ) ) )
        ),
        
        mainPanel(
            tabsetPanel(
                tabPanel( "Grafikon", p(),
                          p( paste0( "Minden orvosi tesztnek kétféle hibázása lehet: ha egy beteget egészségensek minősít, ",
                                     "és ha egy egészségest betegnek. Ezeket, tehát a teszt jóságát jellemzi a szenzitivitás ",
                                     "(annak a valószínűsége, hogy a teszt egy beteg alanyt betegnek minősít) és a ",
                                     "specifitás (annak a valószínűsége, hogy egy egészségest tényleg egészségesnek). ",
                                     "A teszt előtti valószínűség úgy értendő, hogy még a teszt elvégzése előtt mekkora ",
                                     "annak a valószínűsége, hogy a tesztelt alany beteg (a teszteltek hány százaléka ",
                                     "beteg ténylegesen); ez lehet például a betegség prevalenciája. A prediktív érték ",
                                     "a klinikailag fontos mutató: azt mondja meg, hogy ha a lelet pozitív akkor mekkora ",
                                     "valószínűséggel beteg tényleg az alany (pozitív prediktív érték), illetve ha a lelet ",
                                     "negatív, akkor mekkora valószínűséggel egészséges tényleg (negatív prediktív érték). ",
                                     "Részletesebb leírás a címsor alatti linken, vagy " ),
                             a( "ezen", href = "http://www.interpressmagazin.hu/cikkek/163-az_orvoslas_tevedesei_6__resz",
                                target = "_blank" ), " cikk elején érhető el." ),
                          plotOutput( "resultPlot" ) ),
                tabPanel( "Számszerű adatok", tableOutput( "resultTable" ) )
            )
        )
    ),
    
    h4( "Írta: Ferenci Tamás (Óbudai Egyetem, Élettani Szabályozások Kutatóközpont), v1.00" ),
    
    # tags$footer( h4( "Írta: Ferenci Tamás (Óbudai Egyetem, Élettani Szabályozások Kutatóközpont), v1.00" ),
    #              style = "position:absolute; bottom:0; width:100%; height:50px; padding: 10px; z-index: 1000;" ),
    
    tags$script( HTML( "var sc_project=11601191; 
                      var sc_invisible=1; 
                      var sc_security=\"5a06c22d\";
                      var scJsHost = ((\"https:\" == document.location.protocol) ?
                      \"https://secure.\" : \"http://www.\");
                      document.write(\"<sc\"+\"ript type='text/javascript' src='\" +
                      scJsHost+
                      \"statcounter.com/counter/counter.js'></\"+\"script>\");" ),
                 type = "text/javascript" )
)

server <- function(input, output, session) {
    
    observeEvent( input$slider, {
        if( input$slider!=input$sliderNumeric ) {
            updateNumericInput( session, "sliderNumeric", value = input$slider )
        }
    })
    
    observeEvent( input$sliderNumeric, {
        if( input$slider!=input$sliderNumeric & !is.na( input$sliderNumeric ) & is.numeric( input$sliderNumeric ) ) {
            updateSliderInput( session, "slider", value = input$sliderNumeric )
        }
    })
    
    observeEvent( input$type, {
        do.call( updateSliderInput, c( session = session, inputId = "slider", params[[ input$type ]] ) )
        do.call( updateNumericInput, c( session = session, inputId = "sliderNumeric",
                                        params[[ input$type ]][ names( params[[ input$type ]] )!="label" ], label = "" ) )
        do.call( updateSliderInput, c( session = session, inputId = "xlimit", paramslim[ names( paramslim )!=input$type ][[1]] ) )
        do.call( updateSliderInput, c( session = session, inputId = "ylimit", paramslim[ names( paramslim )!=input$type ][[2]] ) )
    })
    
    observe({
        updateNumericInput( session, "xloc", step = if( input$type=="pretest" ) 0.01 else 0.1,
                            label = switch( input$type, "sens" = "Lekérdezett teszt előtti valószínűség [%]",
                                            "pretest" = "Lekérdezett szenzitivitás [%]",
                                            "spec" = "Lekérdezett teszt előtti valószínűség [%]" ) )
        updateNumericInput( session, "yloc", step = if( input$type=="pretest" ) 0.01 else 0.1,
                            label = switch( input$type, "spec" = "Lekérdezett szenzitivitás [%]",
                                            "sens" = "Lekérdezett specificitás [%]",
                                            "pretest" = "Lekérdezett specificitás [%]" ) )
    })
    
    dat <- reactive({
        dat <- list()
        dat[ input$type ] <- input$slider
        dat[[ names( paramslim )[ names( paramslim )!=input$type ][ 1 ] ]] <- seq( input$xlimit[ 1 ], input$xlimit[ 2 ],
                                                                                   length.out = 100 )
        dat[[ names( paramslim )[ names( paramslim )!=input$type ][ 2 ] ]] <- seq( input$ylimit[ 1 ], input$ylimit[ 2 ],
                                                                                   length.out = 100 )
        dat <- do.call( expand.grid, dat )
        dat <- transform( dat,
                          npv = ( spec*(100-pretest)/( (100-sens)*pretest + spec*(100-pretest) ) )*100,
                          ppv = ( sens*pretest/( sens*pretest + (100-spec)*(100-pretest) ) )*100 )
        dat
    })
    
    plotInput <- function() {
        
        form <- switch( input$type,
                        "pretest" = if ( input$flip )  "~spec+sens" else "~sens+spec",
                        "sens" = if ( input$flip )  "~spec+pretest" else "~pretest+spec",
                        "spec" = if ( input$flip )  "~sens+pretest" else "~pretest+sens" )
        
        do.call( gridExtra::grid.arrange, c( lapply( c( "ppv", "npv" ), function( var ) {
            atpoints <- range( dat()[[ var ]], na.rm = TRUE )
            atpoints <- seq( atpoints[ 1 ], atpoints[ 2 ], length.out = 1000 )
            colrp <- colorRampPalette( c( "white",  "red" ) )( length( atpoints ) )
            atcontour <- round( quantile( dat()[[ var ]], (1:9)/10, na.rm = TRUE ), 1 )
            
            lattice::contourplot(
                as.formula( paste0( var, form ) ), data = dat(), colorkey = list( col = colrp, at = atpoints ),
                xlab = switch( labels( terms( as.formula( form ) ) )[ 1 ], "pretest" = "Teszt előtti valószínűség [%]",
                               sens = "Szenzitivitás [%]", "spec" = "Specificitás [%]" ),
                ylab = switch( labels( terms( as.formula( form ) ) )[ 2 ], "pretest" = "Teszt előtti valószínűség [%]",
                               sens = "Szenzitivitás [%]", "spec" = "Specificitás [%]" ),
                main = if ( var == "ppv" ) "Pozitív prediktív érték" else "Negatív prediktív érték",
                scales = list( x = list( log = input$xlog ), y = list( log = input$ylog ) ),
                sub = list( paste0( "Beállított ", switch( input$type, "pretest" = "teszt előtti valószínűség",
                                                           "sens" = "szenzitivitás", "spec" = "specificitás" ), ": ",
                                    input$slider, "%" ), font = 3 ),
                panel = function( ..., at, contour, region, labels, dat = dat() ) {
                    lattice::panel.levelplot( ..., at = atpoints, col.regions = colrp, region = TRUE )
                    lattice::panel.contourplot( ..., at = atcontour, contour = TRUE, region = FALSE,
                                                labels = list( labels = gsub( ".", ",", atcontour, fixed = TRUE ),
                                                               col = "blue" ) )
                    if( input$showloc ) {
                        lattice::panel.points( input$xloc, input$yloc, pch = 19, cex = 1.5 )
                        lattice::panel.text( input$xloc, input$yloc,
                                             round( list(... )$z[ intersect( which( abs( list(...)$x-input$xloc )==min(
                                                 abs( list(...)$x-input$xloc ) ) ),
                                                 which( abs( list(...)$y-input$yloc )==min(
                                                     abs( list(...)$y-input$yloc ) ) ) ) ], 1 ),
                                             pos = 3, col = "blue", cex = 1.5 )
                        lattice::panel.lines( c( input$xloc, input$xloc ), c( 0, input$yloc ) )
                        lattice::panel.lines( c( 0, input$xloc ), c( input$yloc, input$yloc ) )
                    }
                } )
        }), ncol = 2 ) )
        grid::grid.text( "Ferenci Tamás, 2019", 0, 0.02, gp = grid::gpar( fontface = "bold" ), just = "left" )
        grid::grid.text( "http://research.physcon.", 1, 0.06, gp = grid::gpar( fontface = "bold" ), just = "right" )
        grid::grid.text( "uni-obuda.hu", 1, 0.02, gp = grid::gpar( fontface = "bold" ), just = "right" )
    }
    
    output$resultTable <- renderTable({
        dat <- switch( input$type,
                       "pretest" = data.frame( pretest = input$slider, sens = input$xloc, spec = input$yloc ),
                       "sens" = data.frame( pretest = input$xloc, sens = input$slider, spec = input$yloc ),
                       "spec" = data.frame( pretest = input$xloc, sens = input$yloc, spec = input$slider ) )
        dat <- transform( dat,
                          npv = ( spec*(100-pretest)/( (100-sens)*pretest + spec*(100-pretest) ) )*100,
                          ppv = ( sens*pretest/( sens*pretest + (100-spec)*(100-pretest) ) )*100 )
        dat <- reshape( dat, varying = 1:5, v.names = "Érték", timevar = "Paraméter", times = names( dat ), direction = "long" )
        dat$`Paraméter` <- c( "Teszt előtti valószínűség [%]", "Szenzitivitás [%]", "Specificitás [%]",
                              "Negatív prediktív érték [%]", "Pozitív prediktív érték [%]" )
        dat[ , 1:2 ]
    }, format.args = list( decimal.mark = "," ) )
    
    output$resultPlot <- renderPlot({
        print( plotInput() )
    })
    
    output$DownloadFigPDF <- downloadHandler(
        filename = "TestPredictivePlot.pdf",
        content = function( file ) {
            cairo_pdf( file, width = 16, height = 9 )
            print( plotInput() )
            dev.off( )
        } )
    
    output$DownloadFigPNG <- downloadHandler(
        filename = "TestPredictivePlot.png",
        content = function( file ) {
            png( file, width = 1600, height = 900, type = "cairo-png" )
            print( plotInput() )
            dev.off( )
        } )
    
}

shinyApp( ui = ui, server = server )
