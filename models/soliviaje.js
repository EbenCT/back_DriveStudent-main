'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class SoliViaje extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  SoliViaje.init({
    strpolyline: DataTypes.STRING,
    hora_p: DataTypes.STRING,
    cant_pasajeros: DataTypes.INTEGER,
    estado: DataTypes.BOOLEAN,
    id_usuario: DataTypes.INTEGER,
    id_ruta: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'SoliViaje',
  });
  return SoliViaje;
};