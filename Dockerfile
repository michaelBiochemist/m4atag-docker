FROM alpine

LABEL "maintainer"="Michael McDoesntExist"
LABEL "rating"="Five Boops" "class"="B00p Class"
#Install Dependencies
RUN apk update
RUN apk add python3 py3-mutagen py3-pytest

# Copy app to /src
COPY ./m4atag /src
#WORKDIR /src
#RUN ["ln -s","/src/src/m4atag/app.py" ,"/usr/local/bin/m4atag"]
RUN ln -s "/src/src/m4atag/app.py" "/usr/local/bin/m4atag"
WORKDIR /src

CMD "/src/src/m4atag/./app.py"
#CMD ["python","m4atag/app.py"]
