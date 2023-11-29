'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('pagos', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      costo: {
        type: Sequelize.FLOAT
      },
      estado_pago: {
        type: Sequelize.BOOLEAN
      },
      costo_total: {
        type: Sequelize.FLOAT
      },
      estado: {
        type: Sequelize.BOOLEAN
      },
      id_targeta: {
        type: Sequelize.INTEGER
      },
      id_soli_viaje: {
        type: Sequelize.INTEGER
      },
      id_carrera: {
        type: Sequelize.INTEGER
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('pagos');
  }
};