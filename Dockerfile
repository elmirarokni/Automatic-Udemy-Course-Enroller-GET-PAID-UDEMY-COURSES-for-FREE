FROM python:3.8.13

WORKDIR /usr/src/app

COPY udemy_enroller .
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install udemy-enroller

COPY . .

CMD [ "python", "./udemy_enroller.py --browser=chromium" ]
