#!/bin/bash
OS_USER=`whoami`
GITHUB_USER=ytyaru
PATH_DB_REPO=/media/${OS_USER}/some_device_name/db/GitHub.Repositories.${GITHUB_USER}.sqlite3
sqlite3 ${PATH_DB_REPO} < out.sql

