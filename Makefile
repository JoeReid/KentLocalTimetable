help:
	#Run 'make run' to set up everything
	#Run 'make clean' to go back to a fresh download
	#Run 'make uninstall' to delete this directory and everything in it
	#Use 'make uninstall' at your own risk
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
clean:
	rm -rf env
uninstall:
	rm -rf .
