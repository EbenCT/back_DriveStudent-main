'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Usuario extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Usuario.init({
    id: DataTypes.INTEGER,
    nombre: DataTypes.STRING,
    correo: DataTypes.STRING,
    password: DataTypes.STRING,
    nro_registro: DataTypes.INTEGER,
    celular: DataTypes.INTEGER,
    img: DataTypes.STRING,
    carrera: DataTypes.STRING,
    google: DataTypes.BOOLEAN,
    sexo: DataTypes.BOOLEAN,
    estado: DataTypes.BOOLEAN,
    id_rol: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Usuario',
  });
  return Usuario;
};