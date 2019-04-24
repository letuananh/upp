#!/bin/bash
########################################################################
# CONFIGURATION
########################################################################
TEMPLATE_DIR=~/Templates
FONT_DIR=~/.fonts
BIN_DIR=~/bin

########################################################################
# HELPER FUNCTIONS
########################################################################

##
# Append a line at the end of a text file if it doesn't exist
# ARG1 ($1): String to inject
# ARG2 ($2): Path to file
##
function inject {
	ARG1=$1
	ARG2=$2
	if grep -q -e "^${ARG1}$" ${ARG2}; then 
		echo 'String exists, injection aborted.';
		#echo '----------------------------------'
		#cat ${ARG2}
		#echo '----------------------------------'
	else 
		echo 'String not found. Inject now';
		echo ${ARG1} >> ${ARG2} ; 
	fi
}

########################################################################
# MAIN
########################################################################

# Install templates
if [ ! -d "$TEMPLATE_DIR" ]; then
    echo "Creating template folder"
    mkdir "$TEMPLATE_DIR" -v
else
    echo "Template folder exists"
fi
echo "Copying templates to home folder"
cp ./res/Templates/* "$TEMPLATE_DIR" -vu

# Create bin folder
if [ ! -d "${BIN_DIR}" ]; then
    echo "Creating bin folder"
    mkdir "${BIN_DIR}" -v
else
    echo "Bin folder exists"
fi

echo "Copying files to bin folder"
cp ./res/bin/* "${BIN_DIR}" -vu
chmod u+x "${BIN_DIR}"/*

# TODO: Add it to PATH
inject 'export PATH=~/bin:$PATH' ~/.bashrc
inject '. ~/workspace/emacs.d/dotbashrc.sh' ~/.bashrc

inject "escape ^Zz" ~/.screenrc
inject "term screen-256color" ~/.screenrc

# Install fonts
if [ ! -d "$FONT_DIR" ]; then
    echo "Creating font folder"
    mkdir "$FONT_DIR" -v
else
    echo "Font folder exists"
fi
echo "Copying fonts to home folder"
cp ./res/Fonts/SourceCodePro/*.ttf "$FONT_DIR" -vu

if [[ "$1" != "NP" ]]; then
	sudo su -c "bash ./install-package.sh"
else
	echo "No package mode activated"
fi
