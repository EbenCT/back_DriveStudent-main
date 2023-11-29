import dotenv from "dotenv";
import Server from "./models/server";
import tallerRoutes from './routes/taller';

// CONFIGURACION : dotenv
dotenv.config();

const server = new Server();

server.listen();