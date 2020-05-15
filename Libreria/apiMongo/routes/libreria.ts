//todas las rutas a usuarios: login, logout, new usuario ...

import { Router, Request, Response } from 'express';
import libreriaController from '../controllers/libreriaController';

const libreriaRouter = Router();
const libreriaCtrl  = new libreriaController();

libreriaRouter.post('/autor/remove', libreriaCtrl.removeAutor);
libreriaRouter.post('/autor/update', libreriaCtrl.updateAutor);
libreriaRouter.post('/autor', libreriaCtrl.newAutor);
libreriaRouter.post('/autor/filtrar', libreriaCtrl.filtrarAutor);

libreriaRouter.post('/libro', libreriaCtrl.newLibro);
libreriaRouter.get('/libro', libreriaCtrl.getLibro);
libreriaRouter.get('/libros', libreriaCtrl.getLibros);


export default libreriaRouter;