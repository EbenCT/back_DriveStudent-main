"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const user = 'postgres';//encodeURIComponent(process.env.DB_USER || '');
const password = '1234';//encodeURIComponent(process.env.DB_PASSWORD || '');
const host = '127.0.0.1';//encodeURIComponent(process.env.DB_HOST || '');
const port = '5432';//encodeURIComponent(process.env.DB_PORT || '');
const database = 'driveStudent';//encodeURIComponent(process.env.DB_DATABASE || '');
const typeDatabase = 'postgres';
;
const url = `${typeDatabase}://${user}:${password}@${host}:${port}/${database}`;
const options = {
    dialect: 'postgres',
    logging: false,
    dialectOptions: {
        ssl: false
    }
};
const sequelizeConnection = new sequelize_1.Sequelize(url, options);
exports.default = sequelizeConnection;
sequelizeConnection
  .authenticate()
  .then(() => {
    console.log('Conexión a la base de datos establecida correctamente.');
  })
  .catch((error) => {
    console.error('Error al conectar a la base de datos:', error);
  });

//# sourceMappingURL=connection.js.map