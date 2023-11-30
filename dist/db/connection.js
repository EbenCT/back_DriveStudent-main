"use strict";
const path = require('path');
const { Sequelize } = require("sequelize");


const environment = process.env.NODE_ENV || "development";
const config = require(path.join(__dirname, '../../config', 'config.json'));

const sequelizeConnection = new Sequelize(
  "dbdriveStudent",
  "postgres",
  "EsperoQueFuncione123",
  {
    host: "ls-8fc39c72477e818d93276c3746b59a17a39f2dd9.ctcnvbh61jso.us-east-1.rds.amazonaws.com",
    dialect: 'postgres',
    logging: false,
    dialectOptions: {
      ssl: false,
    },
  }
);

sequelizeConnection
  .authenticate()
  .then(() => {
    console.log('Conexión a la base de datos establecida correctamente.');
  })
  .catch((error) => {
    console.error('Error al conectar a la base de datos:', error);
  });

module.exports = sequelizeConnection;
