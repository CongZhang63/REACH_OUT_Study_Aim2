
### Program running the model fitting ###
# gets the parameters
# calls 'functions.R' that contains the necessary functions
# calls 'modele.R' that contains the program
# NEEDS - a subdirectory 'tables' containing the datafile
#       - a subdirectory 'images' to place the graphics
#########################################################################

setwd(" paste here the PATH to your work directory ")
# sets the work directory: replace this one by your own one (the one where you placed this script)
# make sure you created the 'images', 'tables' and 'fichiers' subdirectories

##################### General Parameters #################
file_base		= './tables/PI_mortality_1968-08-01_1999-07-31.txt'	#name of the datafile
nb_app     	= 372  		#length of the training period 
date1_char	= '1/8/1968'	#first date (starting date) of the dataset
time_step	= 'month' 		#time step of the dataset
ylab		= 'monthly mortality (cases for 100000)'			#graphic option for plot
title		= 'influenza mortality in France'	#graphic option for plot
choix_seuil = 'percentile'	#purging method chosen
s = 15	#percentile
sessionid		= 'example' #Session ID returned by the PHP function session_id()
time			= '111'	#the time this script was executed
###################################################


### Parameters specific to the model fitting ######
setting    	= 'retrospective'  		#type of the analysis ('prospective' or 'retrospective')
temps_epid 	= 1  		#minimal number of high observations in a row allowing to issue an alert (detection rule)
CL			= 95							#confidence interval level
model_choice 	= 'selection_algo'			#name of the model chosen (M11, M12, M13, M21, M22, M23, M31, M32, M33) or 'selection_algo'


###################################################
source('functions.R')
source('model.R')
