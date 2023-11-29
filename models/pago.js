'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Pago extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Pago.init({
    costo: DataTypes.FLOAT,
    estado_pago: DataTypes.BOOLEAN,
    costo_total: DataTypes.FLOAT,
    estado: DataTypes.BOOLEAN,
    id_targeta: DataTypes.INTEGER,
    id_soli_viaje: DataTypes.INTEGER,
    id_carrera: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Pago',
  });
  return Pago;
};