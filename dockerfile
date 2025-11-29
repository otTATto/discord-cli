FROM golang:1.25.4

# go install のためのライブラリをインストール
RUN apt-get update \ 
 && apt-get install -y \
    libx11-dev \
    libxfixes-dev \
    libxrandr-dev \
    libxi-dev \
    libxinerama-dev \
    libxrender-dev \
 && rm -rf /var/lib/apt/lists/*

# discordo をインストール
RUN go install github.com/ayn2op/discordo@latest

WORKDIR /app

# .env のコピーと discordo の起動をする
# シェルスクリプトをコピーして実行
COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh
ENTRYPOINT [ "init.sh" ]
