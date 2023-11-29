import { Options, Sequelize } from "sequelize";

const user = 'postgres';;//encodeURIComponent(process.env.DB_USER || '');
const password = '1234';;//encodeURIComponent(process.env.DB_PASSWORD || '');
const host = '127.0.0.1';;//encodeURIComponent(process.env.DB_HOST || '');
const port = '5432';;//encodeURIComponent(process.env.DB_PORT || '');
const database = 'driveStudent';;//encodeURIComponent(process.env.DB_DATABASE || '');
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