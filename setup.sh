#!/bin/bash

# init
npx nuxi init nuxt3-trial
cd nuxt3-trial || exit
npm run dev

# eslint
npm i -D eslint @nuxt/eslint-config
npm init @eslint/config
# vue, typescript
npx eslint . --ignore-path .gitignore
# https://eslint.vuejs.org/user-guide/#what-is-the-use-the-latest-vue-eslint-parser-error

# prettier
npm i -D prettier eslint-config-prettier
# add "prettier" to extends in .eslintrc.js
npx prettier . --write --ignore-path .gitignore

# layouts
npx nuxi add layout default

# pages
npx nuxi add page index
npx nuxi add page dashboard

npx nuxi add page auth/sign-in

npx nuxi add page users/[userId]/index
npx nuxi add page users/[userId]/update

npx nuxi add page users/[userId]/accounts/index
npx nuxi add page users/[userId]/accounts/create
npx nuxi add page users/[userId]/accounts/[accountId]/index
npx nuxi add page users/[userId]/accounts/[accountId]/update
npx nuxi add page users/[userId]/accounts/[accountId]/delete

npx nuxi add page users/[userId]/swaps/create
npx nuxi add page users/[userId]/swaps/[swapId]/index
npx nuxi add page users/[userId]/swaps/index

# composables
npx nuxi add composable
