
export interface ILogin {
    email: string;
    password: string;
}

export interface MsnAPIUser {
     ok: string;
     mensaje?: string;
     token?: string;
     userDB?: IUsario;
 }

export interface IUsario {
    email?: string;
    password?: string;
    rol?: string;
    nombre?: string;
    foto?: any;
 }