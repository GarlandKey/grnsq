#!/bin/bash

count=1
filename=grnsq.log
str="$count green square(s) added."
year="2022"

#get_git () {
#    printf "Enter your GitHub repository URL: "
#    read url
#    git clone $url
#    cd $(basename $url .git)
#}

get_grnsqr () { # $1 = $str, $2 = $filename, $3 = $year
    echo $1 >> $2
    git add .
    git commit --date="$3-$[$RANDOM % 12 + 1]-$[$RANDOM % 28 + 1]" -m "$1"
}

# press q to quit
check_quit () {
    read -s -n 1 -t 0.1 input
    if [[ $input = "q" ]] || [[ $input = "Q" ]]
        then
            git push
            exit 1
    fi
}

get_git

while [ "true" ]
do
    get_grnsqr $str $filename $year
    let "count++"
    check_quit
done