const { postgraphile } = require('postgraphile');
const PostGraphileNestedMutations = require('postgraphile-plugin-nested-mutations');

const { DATABASE, PG_USER, PASSWORD, HOST, PG_PORT } = process.env

module.exports = postgraphile(
    {
        database: DATABASE,
        user: PG_USER,
        password: PASSWORD,
        host: HOST,
        port: PG_PORT,
    },
    'learn',
    {
        appendPlugins: [PostGraphileNestedMutations],
        watchPg: true,
        graphiql: true,
        enhanceGraphiql: true,
    }
)