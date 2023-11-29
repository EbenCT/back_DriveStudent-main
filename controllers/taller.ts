import { Request, Response } from 'express';
import Taller from '../models/taller'; // Asegúrate de importar el modelo correcto

export const getTalleres = async (req: Request, res: Response) => {
    try {
        const talleres = await Taller.findAll();
        res.json({ talleres });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Hable con el administrador',
        });
    }
};

export const getTaller = async (req: Request, res: Response) => {
    const { id } = req.params;
    try {
        const taller = await Taller.findByPk(id);
        if (taller) {
            res.json({ taller });
        } else {
            res.status(404).json({
                msg: `No existe un taller con el id : ${id}`,
            });
        }
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Hable con el administrador',
        });
    }
};

export const postTaller = async (req: Request, res: Response) => {
    const { body } = req;
    try {
        const taller = new Taller(body);
        await taller.save();
        res.json({
            msg: 'Guardado exitosamente...!!!',
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Hable con el administrador',
        });
    }
};

export const putTaller = async (req: Request, res: Response) => {
    const { id } = req.params;
    const { body } = req;
    try {
        const taller = await Taller.findByPk(id);
        if (!taller) {
            return res.status(404).json({
                msg: `No existe un taller con el id : ${id}`,
            });
        }
        await taller.update(body);
        res.json({ taller });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Hable con el administrador',
        });
    }
};

export const deleteTaller = async (req: Request, res: Response) => {
    const { id } = req.params;
    try {
        const taller = await Taller.findByPk(id);
        if (!taller) {
            return res.status(404).json({
                msg: `No existe un taller con el id : ${id}`,
            });
        }
        await taller.destroy();
        res.json(taller);
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Hable con el administrador',
        });
    }
};

export const deleteTallerState = async (req: Request, res: Response) => {
    const { id } = req.params;
    try {
        const taller = await Taller.findByPk(id);
        if (!taller) {
            return res.status(404).json({
                msg: `No existe un taller con el id : ${id}`,
            });
        }
        await taller.update({ estado: false });
        res.json(taller);
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Hable con el administrador',
        });
    }
};
