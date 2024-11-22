#!/bin/bash

export NODE_OPTIONS=--openssl-legacy-provider
ionic build
ionic serve --host 0.0.0.0 --port 8080
