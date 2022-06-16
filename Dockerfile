FROM python:3.8.13

WORKDIR /usr/src/app

COPY udemy_enroller .
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./setup.py" ]
CMD [ "python", "./udemy_enroller --browser=chromium" ]
