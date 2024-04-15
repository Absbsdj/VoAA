FROM modymesourceze/SOURCE:slim-buster

#clonning repo 
RUN git clone https://github.com/Absbsdj/VoA.git /root/SOURCE 
#working directory 
WORKDIR /root/ZESOURCE 

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/Sourcevoa/bin:$PATH"

CMD ["python3","-m","Sourcevoa"]
