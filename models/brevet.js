'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Brevet extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Brevet.init({
    numero: DataTypes.STRING,
    fech_emi: DataTypes.DATE,
    fech_ven: DataTypes.DATE,
    categoria: DataTypes.STRING,
    img_frontal: DataTypes.STRING,
    img_reverso: DataTypes.STRING,
    estado: DataTypes.BOOLEAN,
    id_usuario: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Brevet',
  });
  return Brevet;
};