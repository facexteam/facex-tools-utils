#!/bin/bash

for req in $(cat requirements.txt) pydot; do pip install $req; done