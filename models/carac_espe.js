'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Carac_Espe extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Carac_Espe.init({
    caracteristica: DataTypes.TEXT,
    estado: DataTypes.BOOLEAN,
    id_vehiculo: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Carac_Espe',
  });
  return Carac_Espe;
};