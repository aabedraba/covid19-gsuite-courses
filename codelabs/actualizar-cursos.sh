#!/bin/bash

readarray -t cursos < ./course-links
for i in "${cursos[@]}"
do
	claat export "$i"
done