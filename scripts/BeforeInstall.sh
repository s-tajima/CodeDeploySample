#!/bin/bash

service nginx stop
rm -rf /etc/nginx/*
rm -rf /srv/*

mkdir -p /srv/itamae/
mkdir -p /srv/app/
