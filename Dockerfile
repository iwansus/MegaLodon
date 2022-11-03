#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b MegaLodon https://github.com/iwansus/MegaLodon /home/MegaLodon/ \
    && chmod 777 /home/MegaLodon \
    && mkdir /home/MegaLodon/bin/

COPY ./sample_config.env ./config.env* /home/MegaLodon/

WORKDIR /home/MegaLodon/

RUN pip install -r requirements.txt

CMD ["bash","start"]
