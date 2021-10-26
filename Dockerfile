FROM python:buster

RUN apt-get update
RUN apt-get install -y libglib2.0-0 libnss3 libgconf-2-4 libfontconfig1
RUN pip install selenium
RUN git clone https://github.com/Bruuuuuuce/PKUAutoSubmit.git /PKUAutoSubmit

COPY entrypoint.sh /entrypoint.sh
COPY entrypoint.py /PKUAutoSubmit/entrypoint.py
COPY chromedriver /PKUAutoSubmit/chromedriver/bin/chromedriver

ENTRYPOINT [ "/entrypoint.sh" ]
