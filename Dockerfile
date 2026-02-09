FROM ruby:3.3.0

# System dependencies
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    npm \
    git \
    && rm -rf /var/lib/app/list/*

# Yarn
RUN npm install -g yarn

WORKDIR /app

EXPOSE 3000

CMD ["bash"]
