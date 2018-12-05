FROM dalongrong/skipper:latest as build

FROM abaez/luarocks:lua5.1
LABEL author="1141591465@qq.com"
WORKDIR /
COPY --from=build /usr/bin/skipper /skipper
COPY --from=build /usr/bin/eskip /eskip
ENV PATH=$PATH:/
RUN luarocks install uuid

