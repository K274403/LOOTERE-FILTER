FROM python:3.11.7

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /Lootere_botz

COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade pip --root-user-action=ignore && \
    pip install --no-cache-dir -r requirements.txt --root-user-action=ignore

COPY . .

CMD ["python3", "bot.py"]



## vps deploy commands 

# mkdir Lootere_botz
# cd Lootere_botz
# python3 -m venv venv
# source venv/bin/activate
# git clone https://github.com/Lootere403/Lootere_dhakad.git
# cd Lootere_dhakad
# pip install -r requirements.txt
# python3 bot.py
