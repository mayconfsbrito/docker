#!/bin/bash
docker-compose stop \
	&& docker-compose -f docker-compose-bio.yml build \
	&& docker-compose -f docker-compose-bio.yml up &
