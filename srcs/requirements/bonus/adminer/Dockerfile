FROM debian:bullseye

RUN apt-get update -y && apt-get install adminer -y

RUN mv /usr/share/adminer/adminer.php /usr/share/adminer/index.php

ENTRYPOINT ["php", "-S", "0.0.0.0:8080", "-t", "/usr/share/adminer"]