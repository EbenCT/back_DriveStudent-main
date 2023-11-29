'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Vehiculo extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Vehiculo.init({
    num_placa: DataTypes.STRING,
    modelo: DataTypes.STRING,
    año: DataTypes.INTEGER,
    cap_pasajeros: DataTypes.INTEGER,
    img: DataTypes.STRING,
    estado: DataTypes.BOOLEAN,
    id_usuario: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Vehiculo',
  });
  return Vehiculo;
};