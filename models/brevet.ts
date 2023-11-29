import { DataTypes, Model } from "sequelize";
import db from "../db/connection";
import Usuario from "./preferencia";
import Preferencia from "./preferencia";

class Brevet extends Model {
    public id!: number;
    public nombre!: string;
    public edad!: string | null;
    public img!: string | null;
    public estado!: boolean | null;
    public id_taller!: number; // Llave foránea

  // Otras propiedades del modelo...

  // Definición de las asociaciones
  static associate() {
    Brevet.belongsTo(Preferencia, { foreignKey: 'id_taller' });
  }
}

Brevet.init(
    {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
      },
      nombre: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      edad: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      img: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      estado : {
        type: DataTypes.BOOLEAN,
        allowNull: true,
        defaultValue: true
      },
      id_taller: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
          model: Preferencia,
          key: 'id',
        },
      },
    },
    {
        sequelize: db,
        modelName: "Brevet",
        tableName: "brevet",
    }
  );
  
  export default Brevet;

