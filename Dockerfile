FROM oven/bun:1 AS base 

WORKDIR /web
COPY . .
RUN bun install
RUN bun run build

RUN bun install -g serve

EXPOSE 3000
CMD serve -s build