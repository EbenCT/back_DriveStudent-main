'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Targeta extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Targeta.init({
    nom_titular: DataTypes.STRING,
    num_targeta: DataTypes.INTEGER,
    fech_ven: DataTypes.DATE,
    csv: DataTypes.STRING,
    estado: DataTypes.BOOLEAN,
    id_usuario: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Targeta',
  });
  return Targeta;
};