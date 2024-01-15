#!/bin/bash
rsync -avz --delete requirements.txt src wsgi.py ypes-backend:flask
ssh ypes-backend 'source ~/flask/venv/bin/activate && pip install -r ~/flask/requirements.txt'
ssh oper@lola 'sudo supervisorctl reload'
