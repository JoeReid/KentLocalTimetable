help:
	#Run 'make run' to set up everything
env:
	#-------------------------------------------------
	# Setting Up Virtual Environment
	#
	#  - this should be a one time thing
	#-------------------------------------------------
	virtualenv --no-site-packages -p python3 env
run: env
	#=================================================
	# Running KentLocalTimetable
	#=================================================
	env/bin/python3.4 main.py
