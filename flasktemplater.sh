#!/bin/bash

RED="\e[0;31m"
GREEN="\e[0;32m"
BLUE="\e[0;34m"
NC="\e[0m"

function flask
{
    echo "Weclome in simple flask template maker!"
    echo "It's make simple app.py file in this folder"
    echo ""
    if [ $# -eq 0 ]; then
        echo -e "${RED}WARNING - You didn't provide any argument!$NC"
        echo ""
        echo -e "${BLUE}Arguments:"
        echo -e "${BLUE}\t-w - with tutorial comments (#)$NC"
        echo -e "${BLUE}\t-wo - without tutorial comments (#)$NC"
    fi

    for myargs in "$@"
    do
    #with tutorial comments
        if [ $myargs = '-w' ]; then
            echo -e "${GREEN}In this folder will be your app.py file with tutorial comments$NC"
            echo "#Import the flask module and create an app using Flask; and import render_template for templates/index.html" >> app.py
            echo "from flask import Flask, render_template" >> app.py
            echo "app = Flask(__name__)" >> app.py
            echo "" >> app.py
            echo "#Define the basic route '/' and it's correspondng request handler" >> app.py
            echo "@app.route('/') #after '/' You could write , methods=['GET'] if request must to be send by GET or methods=['POST'], if POST" >> app.py
            echo "def main():" >> app.py
            echo -e "\treturn render_template('index.html') #for '/'" >> app.py
            echo "" >> app.py
            echo "#@app.route('/nameofsubsite')" >> app.py
            echo "#def nameofsubsite():" >> app.py
            echo -e "\t#return render_template('nameofsubsite.html')" >> app.py
            echo "" >> app.py
            echo "#Check if the execute file is the main program and run the app" >> app.py
            echo "" >> app.py
            echo 'if __name__ == "__main__":' >> app.py
            echo -e "\tapp.run() #if another port niż than 5000, just write in () port = 1234, instead 1234 port number" >> app.py
            echo ""
            echo -e "${GREEN}Complete!$NC"
            echo -e "${GREEN}Have a nice day! :)$NC"
        fi
    #without tutorial comments
        if [ $myargs = '-wo' ]; then
            echo -e "${GREEN}In this folder will be your app.py file without tutorial comments$NC"
            echo "from flask import Flask, render_template" >> app.py
            echo "app = Flask(__name__)" >> app.py
            echo "" >> app.py
            echo "@app.route('/')" >> app.py
            echo "def main():" >> app.py
            echo -e "\treturn render_template('index.html') #for '/'" >> app.py
            echo "" >> app.py
            echo 'if __name__ == "__main__":' >> app.py
            echo -e "\tapp.run()" >> app.py
            echo ""
            echo -e "${GREEN}Complete!$NC"
            echo -e "${GREEN}Have a nice day! :)$NC"
        fi
    done
}

function main
{
    flask $1
}
main $1