FROM microsoft/dotnet:2.2-runtime
RUN apt-get -y update
RUN apt-get -y install ghostscript imagemagick tesseract-ocr tesseract-ocr-deu
