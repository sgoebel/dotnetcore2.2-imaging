FROM mcr.microsoft.com/dotnet/core/runtime:2.2
RUN apt-get -y update
RUN apt-get -y install ghostscript imagemagick tesseract-ocr
