FROM eusojk/dssatv47-ubuntu:v0.0.2.2020

RUN mkdir -p /home/ET_DSS_HIST/dssat_files_dir  #redo
RUN mkdir -p /home/ET_DSS_HIST/data  #redo
RUN cp -r /home/dssat-base-files/* /home/ET_DSS_HIST/dssat_files_dir  #redo

COPY . /home/ET_DSS_HIST  
COPY ./TEST/* /home/ET_DSS_HIST/dssat_files_dir 

WORKDIR /home/ET_DSS_HIST 

RUN pip3 install -r requirements.txt #redo

CMD ["python3", "app.py"]