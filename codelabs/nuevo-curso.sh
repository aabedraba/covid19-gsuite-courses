#!/bin/bash

readarray -t cursos < ./course-links
exists=false
for curso in "${cursos[@]}"
do
    if [ "$1" == "$curso" ]; then
        exists=true
    fi
done
if ! $exists; then
    claat export "$1"
    echo "$1" >> ./course-links
else
    echo "Course already exists"
fi
