#!/bin/bash

make clean
make add-app
./client.py --Ice.Config=locator.config factory
