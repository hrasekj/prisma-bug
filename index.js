const http = require('http');
// const { PrismaClient } = require('@prisma/client');
// const prisma = new PrismaClient();

http.createServer((_, res) => {
    res.end('ok');
}).listen(8888, () => console.log('Server listen on http://localhost:8888'));
