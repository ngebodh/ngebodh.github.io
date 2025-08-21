install:
	#This downloads and installs quarto to container
	# Quarto versions:
	# * 1.4.557 - Version in use
	# * 1.6.42  - not using b/c tags break on rendering

	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install python3-pip -y
	python3 -m pip install --upgrade pip
	sudo apt install python3.10-venv -y

	#Download Quarto
	# wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.6.42/quarto-1.6.42-linux-amd64.deb
	wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.4.557/quarto-1.4.557-linux-amd64.deb

	#From the downloaded package, depackage it with dpkg and install 
	# sudo dpkg -i quarto-1.6.42-linux-amd64.deb
	sudo dpkg -i quarto-1.4.557-linux-amd64.deb

	sudo rm quarto-1.4.557-linux-amd64.deb
