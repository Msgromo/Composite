#!/bin/bash

## Borro el directorio bin si ya existiera
if [ -d "./bin" ];
    then rm -r ./bin;
fi

## Creo los directorios para el Binario
mkdir ./bin/

## Compilo el Binario
g++ -Wall -std=c++11 -I./include/ -c ./src/Folder.cpp
g++ -Wall -std=c++11 -I./include/ -c ./src/File.cpp
g++ -Wall -std=c++11 -I./include/ -c main.cpp

g++ Folder.o Folder.o main.o  -o ./bin/main.bin

## Limpio los códigos objeto
rm ./*.o

## Doy permisos y ejecuto
chmod +x ./bin/main.bin
./bin/main.bin