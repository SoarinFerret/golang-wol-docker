FROM golang as builder

ARG VERSION=latest

ENV GO111MODULE=on

WORKDIR /app

RUN CGO_ENABLED=0 GOPATH=/app go install github.com/sabhiram/go-wol/cmd/wol@${VERSION}

# final stage
FROM scratch
COPY --from=builder /app/bin/wol /app/wol
ENV USER=/app
ENTRYPOINT ["/app/wol"]
