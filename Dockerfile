FROM node:20-alpine

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN echo "Before: corepack version => $(corepack --version || echo 'not installed')"
RUN npm install -g corepack@latest
RUN echo "After : corepack version => $(corepack --version)"
RUN corepack enable

COPY package.json .
COPY pnpm-lock.yaml .
COPY tsconfig.json .
COPY svelte.config.js .
COPY vite.config.ts .

COPY . .

RUN --mount=type=cache,id=pnpm,target=/pnpm/store pnpm install --no-frozen-lockfile
RUN pnpm build

EXPOSE 4173
CMD ["pnpm", "preview"]