import { Schema, model, Document, Collection } from 'mongoose';
import { IAutor } from './autorModels';
const libroSchema = new Schema({
    titulo: { type: String, required: [ true, 'Nombre es requerido'] },
    paginas: { type: Number },
    isbn: { type: String },
    editorial: {
        nombre: String,
        agente: String
    },
    autor: {type: Schema.Types.ObjectId, ref: "Autor" }
}, { collection: 'Libros'});

export interface ILibro  extends Document {
    titulo: string;
    paginas?: number;
    isbn: string;
    autor: IAutor ;
}

export const LibroModel = model<ILibro>('Libro', libroSchema);