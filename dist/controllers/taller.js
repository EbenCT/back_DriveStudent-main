'use strict';
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.disableTaller = exports.deleteTaller = exports.putTaller = exports.postTaller = exports.getTaller = exports.getTalleres = void 0;
const talleres_1 = __importDefault(require("../models/taller"));

exports.getTalleres = getTalleres;
const getTalleres = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const { id } = req.params;
    const taller = yield talleres_1.default.findByPk(id);
    if (taller) {
        res.json({ taller });
    }
    else {
        res.status(404).json({
            msg: `No existe un taller con el id ${id}`
        });
    }
});

const getTaller = async (req, res) => {
    try {
        const { id } = req.params;
        const taller = await Taller.findByPk(id);
        if (taller) {
            res.json({ taller });
        } else {
            res.status(404).json({ msg: `No existe un taller con el id: ${id}` });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ msg: 'Error al obtener el taller' });
    }
};

const postTaller = async (req, res) => {
    try {
        const { body } = req;
        const taller = await Taller.create(body);
        res.json({ msg: 'Taller creado exitosamente', taller });
    } catch (error) {
        console.error(error);
        res.status(500).json({ msg: 'Error al crear el taller' });
    }
};

const putTaller = async (req, res) => {
    try {
        const { id } = req.params;
        const { body } = req;
        const taller = await Taller.findByPk(id);
        if (taller) {
            await taller.update(body);
            res.json({ msg: 'Taller actualizado exitosamente', taller });
        } else {
            res.status(404).json({ msg: `No existe un taller con el id: ${id}` });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ msg: 'Error al actualizar el taller' });
    }
};

const deleteTaller = async (req, res) => {
    try {
        const { id } = req.params;
        const taller = await Taller.findByPk(id);
        if (taller) {
            await taller.destroy();
            res.json({ msg: 'Taller eliminado exitosamente', taller });
        } else {
            res.status(404).json({ msg: `No existe un taller con el id: ${id}` });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ msg: 'Error al eliminar el taller' });
    }
};

const disableTaller = async (req, res) => {
    try {
        const { id } = req.params;
        const taller = await Taller.findByPk(id);
        if (taller) {
            await taller.update({ estado: false });
            res.json({ msg: 'Estado del taller actualizado a false', taller });
        } else {
            res.status(404).json({ msg: `No existe un taller con el id: ${id}` });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ msg: 'Error al actualizar el estado del taller' });
    }
};

module.exports = {
    getTalleres,
    getTaller,
    postTaller,
    putTaller,
    deleteTaller,
    disableTaller,
};
