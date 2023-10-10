# syntax=docker/dockerfile:1

# Build the application from source
FROM golang:1.21.1 AS build-stage

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

WORKDIR $GOPATH/pkg/mod/github.com/cloudfoundry/
RUN cd ./java-buildpack-memory-calculator*/ && CGO_ENABLED=0 GOOS=linux go build -o /memory-calculator

# Deploy the application binary into a lean image
FROM gcr.io/distroless/base-debian12 AS build-release-stage

WORKDIR /

COPY --from=build-stage /memory-calculator /memory-calculator

USER nonroot:nonroot

ENTRYPOINT ["/memory-calculator"]