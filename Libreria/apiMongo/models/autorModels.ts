import { Schema, model, Document } from 'mongoose';
import { ILibro } from './libroModels';

// creamos el esquema
const autorSchema = new Schema({
    nombre: { type: String, required: [ true, 'Nombre es requerido'] },
    biografia: { type: String },
    nacionalidad: { type: String },
    isValid: Boolean,
    deportes: [String],
    telefonos:[{ label:String, numero: String }],
    fecha: { type: Date },
    correo: { email: String, tipo: String },
    libros: [{ type: Schema.Types.ObjectId, ref: "Libro" }],
}, { collection: 'Autores'});


// creamos la interfaz  --> autocompletado
export interface IAutor extends Document {
    _id: string;
    nombre?: string;
    biografia?: string;
    nacionalidad?: string;
    deportes?: [String],
    fecha?: Date;
    isValid?: Boolean,
    libros?: [ ILibro ]
}
// creamos el modelo
export const AutorModel = model<IAutor>('Autor', autorSchema);