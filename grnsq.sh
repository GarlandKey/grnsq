#!/bin/bash

count=1
filename=/log/grnsq.log
str="$count green square(s) added."
year="2022"

check_quit () {
    read -s -n 1 -t 0.1 input
    if [[ $input = "q" ]] || [[ $input = "Q" ]]
        then
            git push
            exit 1
    fi
}

printf "Enter your GitHub repository URL: "
read url
git clone $url
cd $(basename $url .git)
touch $filename
while [ "true" ]
do
    echo $str >> $filename
    git add .
    git commit --date="$year-$[$RANDOM % 12 + 1]-$[$RANDOM % 28 + 1]" -m "$str"
    let "count++"
    check_quit
done