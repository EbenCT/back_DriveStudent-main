'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  up: async (queryInterface, Sequelize) => {
    // Seed para crear dos usuarios como pasajeros (con rol 1) y tres como conductores (con rol 2)
    await queryInterface.bulkInsert('usuarios', [
      {
        id:1,
        nombre: 'Usuario Pasajero 1',
        correo: 'pasajero1@example.com',
        password: 'contraseña123',
        nro_registro: 12345,
        celular: 987654321,
        img: 'ruta/a/imagen1.jpg',
        carrera: 'Ingeniería',
        google: false,
        sexo: true,
        estado: true,
        id_rol: 1, // ID correspondiente al rol de pasajero
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        id:2,
        nombre: 'Usuario Pasajero 2',
        correo: 'pasajero2@example.com',
        password: 'contraseña456',
        nro_registro: 54321,
        celular: 123456789,
        img: 'ruta/a/imagen2.jpg',
        carrera: 'Arquitectura',
        google: false,
        sexo: false,
        estado: true,
        id_rol: 1, // ID correspondiente al rol de pasajero
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        id:3,
        nombre: 'Usuario Conductor 1',
        correo: 'conductor1@example.com',
        password: 'contraseña789',
        nro_registro: 11111,
        celular: 999999999,
        img: 'ruta/a/imagen3.jpg',
        carrera: 'Ingeniería',
        google: true,
        sexo: true,
        estado: true,
        id_rol: 2, // ID correspondiente al rol de conductor
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        id:4,
        nombre: 'Usuario Conductor 2',
        correo: 'conductor2@example.com',
        password: 'contraseña101',
        nro_registro: 22222,
        celular: 888888888,
        img: 'ruta/a/imagen4.jpg',
        carrera: 'Arquitectura',
        google: true,
        sexo: false,
        estado: true,
        id_rol: 2, // ID correspondiente al rol de conductor
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        id:5,
        nombre: 'Usuario Conductor 3',
        correo: 'conductor3@example.com',
        password: 'contraseña112',
        nro_registro: 33333,
        celular: 777777777,
        img: 'ruta/a/imagen5.jpg',
        carrera: 'Biología',
        google: true,
        sexo: true,
        estado: true,
        id_rol: 2, // ID correspondiente al rol de conductor
        createdAt: new Date(),
        updatedAt: new Date(),
      },
    ]);
  },

  down: async (queryInterface, Sequelize) => {
    // Eliminar los usuarios insertados
    await queryInterface.bulkDelete('usuarios', null, {});
  }
};