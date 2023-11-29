'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Punto extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Punto.init({
    lat: DataTypes.DOUBLE,
    long: DataTypes.DOUBLE,
    nom_lugar: DataTypes.STRING,
    estado: DataTypes.BOOLEAN,
    id_ruta: DataTypes.INTEGER,
    id_soli_viaje: DataTypes.INTEGER,
    id_carrera: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Punto',
  });
  return Punto;
};