FROM node:18
WORKDIR /app

# package.json と package-lock.json （もしあれば）をコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# アプリケーションのソースコードをコピー
COPY . .

EXPOSE 3000

# アプリケーションを起動
CMD ["npm", "run", "dev"]