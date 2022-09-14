# serverless-framework-Prisma

以下の要素を使って、APIを作成する

- Docker
- Serverless Framework
- TypeScript
- Node.js

クイックスタート
https://www.prisma.io/docs/getting-started/quickstart

nodeコンテナに入る
`docker exec -it node bash`

既存のDBからスキーマを作成するコマンド(prisma/schema.prismaが更新される)
`npx prisma db pull`
