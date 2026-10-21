FROM alpine:3.20

WORKDIR /workspace
COPY . .

RUN chmod +x scripts/validate.sh

CMD ["sh", "scripts/validate.sh"]
