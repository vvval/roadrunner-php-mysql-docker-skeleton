# A docker skeleton app bundle with php/composer + mysql + roadrunner

## Install via Composer
```bash
composer create-project --prefer-dist vvval/roadrunner-php-mysql-docker-skeleton your_app
```

## Docker
Build all containers in the foreground
```bash
docker-compose -f docker-compose.yml build --no-cache
```

Start all containers in the background
```bash
docker-compose -f docker-compose.yml up -d
```

Install composer dependencies
```bash
docker exec composer composer install
```

Run roadrunner server
```bash
docker exec app ../rr/rr serve -v -d
```

> See Makefile for a full list of commands

## Thanks
Thanks [n1215](https://github.com/n1215/roadrunner-docker-skeleton) and [Sergey Telpuk](https://github.com/sergey-telpuk/roadrunner-docker-skeleton) for their repos
