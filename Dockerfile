FROM microsoft/dotnet:2.2-runtime
RUN apt-get -y install wget
RUN echo "deb https://notesalexp.org/tesseract-ocr/stretch/ stretch main" | tee -a /etc/apt/sources.list
RUN echo "deb deb https://notesalexp.org/tesseract-ocr/tessdata_best/ stretch main" | tee -a /etc/apt/sources.list
RUN wget -O - https://notesalexp.org/debian/alexp_key.asc | sudo apt-key add -
RUN apt-get -y update
RUN apt-get -y install ghostscript imagemagick tesseract-ocr tesseract-ocr-deu
COPY *.traineddata /usr/share/tesseract-ocr/tessdata/
