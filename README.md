# asclepios-sse-docker-compose

docker-compose set up for the ASCLEPIOS symmetric searchable encryption service

## Usage

```
cp .env.example .env # edit this file to configure
docker-compose build
docker-compose up
```

Once it has successfully booted, each components is accessible on the host as follows:

* SSE Client - `http://localhost:80`
* SSE Server - `http://localhost:8080`
* TA - `http://localhost:8000`

## Links

* [ASCLEPIOS SSE Client](https://github.com/UoW-CPC/Asclepios-Client)
* [ASCLEPIOS SSE Server](https://github.com/UoW-CPC/Asclepios-Server)
* [ASCLEPIOS Trusted Authority](https://github.com/UoW-CPC/Asclepios-TrustedAuthority)
* [ASCLEPIOS SSE Manuals](https://github.com/UoW-CPC/Asclepios-Manual)
