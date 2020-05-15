import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { IUsario } from '../interfaces/usuariosInterface';

@Injectable({
  providedIn: 'root'
})
export class UsuariosService {
  httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/x-www-form-urlencoded'
    })
  };
  ruta = '';
  params = null;

  constructor(private http: HttpClient) { }

  getUsuarios(){
    this.ruta = 'http://www.proyectos.com/Tienda/apiPHP/controllers/usuarios/listar.php';
    return this.http.get(this.ruta, this.httpOptions);
  }

  newUsuario(usuario: IUsario){
    this.ruta = 'http://www.proyectos.com/Tienda/apiPHP/controllers/usuarios/insertar.php';
    this.params =  usuario ;
    console.log(this.params);
    return this.http.post(this.ruta, this.params, this.httpOptions)
  }
}
