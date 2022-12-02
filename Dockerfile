#Mengambil base image Node.js versi 14
FROM node:14-alpine

#Membuat directory baru bernama app
WORKDIR /app

#Copy source dan destination untuk mengcopy semua file project ke container
COPY . .

#Menggunakan environment production dan container bernama item-db
ENV NODE_ENV=production DB_HOST=item-db

#Menginstall dependencies saat proses pembuatan image
RUN npm install --production --unsafe-perm && npm run build

#Membuka port atau port yang akan di akses nanti
EXPOSE 8080

#Mengeksekusi perintah saat docker image sudah dijalankan menjadi container
CMD ["npm", "start"]