'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Preferencia extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Preferencia.init({
    preferencia: DataTypes.TEXT,
    estado: DataTypes.BOOLEAN,
    id_usuario: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Preferencia',
  });
  return Preferencia;
};