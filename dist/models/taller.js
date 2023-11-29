"use strict";
const { Model, DataTypes } = require('sequelize');
const connection = require('../db/connection');
const Usuario = require('./usuario'); // Asegúrate de tener el modelo Usuario importado

class Taller extends Model {
    static associate() {
        Taller.belongsTo(Usuario, { foreignKey: 'id_usuario' });
    }
}

Taller.init({
    id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
    },
    nombre: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    direccion: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    celular: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    hora_atencion: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    id_usuario: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: Usuario,
            key: 'id',
        },
    },
}, {
    sequelize: connection,
    modelName: "Taller",
    tableName: "talleres",
});

module.exports = Taller;
