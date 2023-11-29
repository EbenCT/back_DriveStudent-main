'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Ruta extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Ruta.init({
    strpolyline: DataTypes.STRING,
    hora_p: DataTypes.STRING,
    estado_cap: DataTypes.BOOLEAN,
    cant_pasajero: DataTypes.INTEGER,
    estado: DataTypes.BOOLEAN,
    id_usuario: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Ruta',
  });
  return Ruta;
};