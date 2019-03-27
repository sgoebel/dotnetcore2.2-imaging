FROM microsoft/dotnet:2.2-runtime
RUN echo "deb https://notesalexp.org/tesseract-ocr/stretch/ stretch main" | tee -a /etc/apt/sources.list
RUN echo "deb https://notesalexp.org/tesseract-ocr/tessdata_best/ stretch main" | tee -a /etc/apt/sources.list
RUN apt-get -y update -oAcquire::AllowInsecureRepositories=true
RUN apt-get -y install notesalexp-keyring -oAcquire::AllowInsecureRepositories=true
RUN apt-get -y update
RUN apt-get -y install ghostscript imagemagick tesseract-ocr tesseract-ocr-deu
