FROM node:20-alpine

WORKDIR /app

# 모든 파일을 먼저 복사 (소스코드 변경시 npm install 재실행)
COPY . .

# 의존성 설치 (매번 재실행됨)
RUN npm install

EXPOSE 3000

CMD ["npm", "start"]