import { Router } from 'express';
import { 
    getTalleres,
    getTaller,
    postTaller,
    putTaller,
    deleteTaller,
    deleteTallerState
} from '../controllers/taller'; // Asegúrate de importar correctamente los controladores de talleres

import validarCampos from '../middlewares/validar-campos'; // Si tienes un middleware de validación específico para talleres, asegúrate de importarlo

const router = Router();
console.log('Llegué a rutas de Talleres');
router.get('/', getTalleres);

router.get('/:id', getTaller);

router.post('/', [
    // Posibles validaciones o middleware específico para la creación de talleres
    validarCampos,
], postTaller);

router.put('/:id', [
    // Posibles validaciones o middleware específico para la actualización de talleres
    validarCampos,
], putTaller);

router.delete('/:id', [
    // Posibles validaciones o middleware específico para la eliminación de talleres
    validarCampos,
], deleteTallerState);

router.delete('/del/:id', [
    // Posibles validaciones o middleware específico para la eliminación de talleres
    validarCampos,
], deleteTaller);

export default router;
