library(shiny)



# Define UI for app that draws a histogram ----
ui <- fluidPage(

	# App title ----
	titlePanel("Édition de fiche de rémunération"),

	# Sidebar layout with input and output definitions ----
	sidebarLayout(

		# Sidebar panel for inputs ----
		sidebarPanel(

			h1("Utilisation")

		),

		# Main panel for displaying outputs ----
		mainPanel(
			tabsetPanel(
				tabPanel(
					"Gestionnaire"
				),	
				tabPanel(
					"Édition",
					textInput("nom", "Nom du Formateur", ""),
					textInput("dispo", "N° de dispositif", "20A007")
				),
				#source("composantes/configurationGestionnaires.R")
				tabPanel(
					"Configuration",
					textInput("initgest", "Initiales du gestionnaire", ""),
					textInput("nomgest", "Nom du gestionnaire", ""),
					textInput("prenomgest", "Prénom du gestionnaire", ""),
					textInput("mailgest", "Mail gestionnaire", "@ac-dijon.fr"),
					textInput("accesThunderbird", "Chemin d'accès à Thunderbird", "C:\\"),
					actionButton("creergest", "Création de l'utilisateur", icon=NULL)
				)
			)
		)
	)
)