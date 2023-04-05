#!/usr/bin/python3

import airflow
from airflow import models, settings

## Airflow 1.10.12
# from airflow.contrib.auth.backends.password_auth import PasswordUser
## Airflow 2.0.0

from airflow.api.auth.backend.basic_auth import PasswordUser
from sqlalchemy import create_engine

user = PasswordUser(models.User())
user.username = 'airflow'
user.email = 'airflow@email.com'
user.password = 'airflow'

# the secret sauce is right here
engine = create_engine("postgresql://airflow:airflow@172.146.146.6:5432/airflow")

session = settings.Session(bind=engine)
session.add(user)
session.commit()
session.close()
exit()
