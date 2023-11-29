'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class CaliCom extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  CaliCom.init({
    comentario: DataTypes.STRING,
    calificacion: DataTypes.INTEGER,
    estado: DataTypes.BOOLEAN,
    id_usuario: DataTypes.INTEGER,
    id_soliviaje: DataTypes.INTEGER,
    id_carrera: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'CaliCom',
  });
  return CaliCom;
};