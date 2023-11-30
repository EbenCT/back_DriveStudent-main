import { Options, Sequelize } from "sequelize";

const user = 'postgres';;//encodeURIComponent(process.env.DB_USER || '');
const password = 'r{$uTMo}PVKD<J^f6P~_7zIY,N`k!?rb';;//encodeURIComponent(process.env.DB_PASSWORD || '');
const host = 'ls-8fc39c72477e818d93276c3746b59a17a39f2dd9.ctcnvbh61jso.us-east-1.rds.amazonaws.com';;//encodeURIComponent(process.env.DB_HOST || '');
const port = '5432';;//encodeURIComponent(process.env.DB_PORT || '');
const database = 'dbdriveStudent';;//encodeURIComponent(process.env.DB_DATABASE || '');
const typeDatabase = 'postgres';;

const url = `${typeDatabase}://${user}:${password}@${host}:${port}/${database}`;

const options: Options = {
    dialect: 'postgres', // 'mysql' | 'sqlite' | 'postgres' | 'mariadb' | 'mssql'
    logging: false, // false
    dialectOptions: {
        ssl: {
            rejectUnauthorized: false
        }
    }
};

const sequelizeConnection = new Sequelize(url, options);
export default sequelizeConnection;