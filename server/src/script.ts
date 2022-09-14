import {PrismaClient} from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
    // 型推論の結果は以下のようになっている
    // const users: (users & {cars: cars[]})[]
    const users = await prisma.users.findMany({
            include: {cars: true}
        }
    )

    // let user: users & {cars: cars[]}
    for (let user of users) {
        console.log(user);
    }
}

main()
    .catch((e) => {
        throw e;
    })
    .finally(async () => {
        // データベースとのコネクションを切る
        await prisma.$disconnect();
    });
