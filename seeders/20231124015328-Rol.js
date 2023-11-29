'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert('rols', [
      {
        nombre_rol: 'Pasajero',
        descripcion: 'Rol para usuarios que viajan como pasajeros',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        nombre_rol: 'Conductor',
        descripcion: 'Rol para usuarios que son conductores',
        createdAt: new Date(),
        updatedAt: new Date(),
      }
    ], {});
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.bulkDelete('rols', null, {});
  }
};
