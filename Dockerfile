FROM swift:5.4
FROM --platform=linux/x86_64 ubuntu:18.04

RUN apt-get update && apt-get install -y sudo openssl libssl-dev libcurl4-openssl-dev

EXPOSE 8080

RUN mkdir /swift-shopAPI

ADD Sources /swift-shopAPI/Sources
ADD Package.swift /swift-shopAPI
ADD Package.resolved /swift-shopAPI
ADD LICENSE /swift-shopAPI
ADD .swift-version /swift-shopAPI

# Build Swift Starter App
RUN cd /swift-shopAPI && swift build

USER root
CMD ["/swift-shopAPI/.build-linux/x86_64-unknown-linux/debug/Server"]
