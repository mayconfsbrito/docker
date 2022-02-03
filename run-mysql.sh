#!/bin/bash
docker-compose stop \
	&& docker-compose -f docker-compose-mysql.yml build \
	&& docker-compose -f docker-compose-mysql.yml up &
