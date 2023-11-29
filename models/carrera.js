'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Carrera extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Carrera.init({
    estado_carrera: DataTypes.BOOLEAN,
    hora_p: DataTypes.STRING,
    hora_d: DataTypes.STRING,
    estado: DataTypes.BOOLEAN,
    id_pasajero: DataTypes.INTEGER,
    id_conductor: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Carrera',
  });
  return Carrera;
};