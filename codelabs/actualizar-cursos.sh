#!/bin/bash

cursos=($(awk -F= '{print $1}' course-links))
for i in "${cursos[@]}"
do
	claat export "$i"
done