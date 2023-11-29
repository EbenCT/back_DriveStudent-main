import { DataTypes, Model } from "sequelize";
import db from "../db/connection";
import Usuario from "./usuario";

class Preferencia extends Model {
  public id!: number;
  public nombre!: string;
  public direccion!: string;
  public celular!: string;
  public hora_atencion!: string;
  public id_usuario!: number; // Llave foránea

  // Otras propiedades del modelo...

  // Definición de las asociaciones
  public static associate() {
    Preferencia.belongsTo(Usuario, { foreignKey: "id_usuario" });
  }
}

Preferencia.init(
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    nombre: {
      type: DataTypes.STRING,
      allowNull: false,
  },
  direccion: {
      type: DataTypes.STRING,
      allowNull: false,
  },
  celular: {
      type: DataTypes.STRING,
      allowNull: false,
  },
  hora_atencion: {
      type: DataTypes.STRING,
      allowNull: false,
  },
    id_usuario: {
      type: DataTypes.INTEGER,
      references: {
        model: Usuario,
        key: "id",
      },
    },
  },
  {
    sequelize: db,
    modelName: "Preferencia",
    tableName: "preferencias",
  }
);

export default Preferencia;

