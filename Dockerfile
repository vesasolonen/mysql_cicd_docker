services:

  db:
    image: mysql:5.7
    command: --default-authentication-plugin=mysql_native_password
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: wPrP80
      MYSQL_DATABASE: wordpress
      MYSQL_USER: admin_user
      MYSQL_PASSWORD: P#q3dJ/4

  adminer:
    image: adminer
    restart: always
    ports:
      - 8080:80