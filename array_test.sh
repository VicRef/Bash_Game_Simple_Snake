#!/bin/bash

my_array=("o")

echo ${my_array[*]}

my_array+=("ö" "ö" "ö")

echo ${my_array[*]}

echo ${my_array[1]}
