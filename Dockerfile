# Koristimo Node.js baznu sliku
FROM node:18

# Postavljamo radni direktorijum unutar kontejnera
WORKDIR /app

# Kopiramo package fajlove i instaliramo zavisnosti
COPY package*.json ./
RUN npm install

# Kopiramo sav preostali kod u radni direktorijum
COPY . .

# Kompajliramo TypeScript kod
RUN npm run build

# Eksponiramo port koji aplikacija koristi
EXPOSE 4000

# Komanda za pokretanje aplikacije
CMD ["node", "dist/index.js"]
