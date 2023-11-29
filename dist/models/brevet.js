"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const connection_1 = __importDefault(require("../db/connection"));
const taller_1 = __importDefault(require("./preferencia"));
class Brevet extends sequelize_1.Model {
    // Otras propiedades del modelo...
    // Definición de las asociaciones
    static associate() {
        Brevet.belongsTo(taller_1.default, { foreignKey: 'id_taller' });
    }
}
Brevet.init({
    id: {
        type: sequelize_1.DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
    },
    nombre: {
        type: sequelize_1.DataTypes.STRING,
        allowNull: false,
    },
    edad: {
        type: sequelize_1.DataTypes.STRING,
        allowNull: false,
    },
    img: {
        type: sequelize_1.DataTypes.STRING,
        allowNull: true,
    },
    estado: {
        type: sequelize_1.DataTypes.BOOLEAN,
        allowNull: true,
        defaultValue: true
    },
    id_taller: {
        type: sequelize_1.DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: taller_1.default,
            key: 'id',
        },
    },
}, {
    sequelize: connection_1.default,
    modelName: "Brevet",
    tableName: "brevets",
});
exports.default = Brevet;
//# sourceMappingURL=brevet.js.map