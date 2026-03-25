FROM debian:testing-slim@sha256:409af6ae842eaa7f6ed9218b968bb0a3f73dd94c1239be0637adf86083531e18

RUN apt update && apt install -y --no-install-recommends \
    ca-certificates \
    curl \
    python3-email-oauth2-proxy

WORKDIR /app

COPY emailproxy.config .

CMD ["sleep", "infinity"]
