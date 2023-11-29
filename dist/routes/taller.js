"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const talleres_1 = require("../controllers/taller");
const router = (0, express_1.Router)();
router.get('/', talleres_1.getTalleres);
router.get('/:id', talleres_1.getTaller);
router.post('/', talleres_1.postTaller);
router.put('/:id', talleres_1.putTaller);
router.delete('/:id', talleres_1.disableTaller);
router.delete('/del/:id', talleres_1.deleteTaller);
exports.default = router;
//# sourceMappingURL=preferencias.js.map