#!/bin/bash

echo "Starting setup..."

# Check for .env
if [ ! -f .env ]; then
  echo ".env file not found."
  echo "Please create one by running: cp .env.example .env"
  exit 1
fi

echo "Installing dependencies..."
npm install

echo "Starting Docker containers..."
docker compose up -d

echo "Generating Prisma client..."
npx prisma generate

echo "Pushing schema to the database..."
npx prisma db push

echo "Seeding the database..."
npx tsx prisma/seed.ts

echo "Setup complete. Run 'npm run dev' to start the app."
