import { DataTypes, Model } from "sequelize";
import db from "../db/connection";
import Usuario from "./usuario";

class Taller extends Model {
    public id!: number;
    public nombre!: string;
    public direccion!: string;
    public celular!: string;
    public hora_atencion!: string;
    public id_usuario!: number; // Llave foránea

    // Otras propiedades del modelo...

    // Definición de las asociaciones
    static associate() {
        Taller.belongsTo(Usuario, { foreignKey: 'id_usuario' });
    }
}

Taller.init(
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
            allowNull: false,
            references: {
                model: Usuario,
                key: 'id',
            },
        },
    },
    {
        sequelize: db,
        modelName: "Taller",
        tableName: "taller",
    }
);

export default Taller;
