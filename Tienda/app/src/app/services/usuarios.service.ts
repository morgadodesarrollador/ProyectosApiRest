import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class UsuariosService {
  httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/x-www-form-urlencoded'
    })
  };
  ruta = 'http://www.proyectos.com/Tienda/apiPHP/controllers/usuarios/listar.php';
  params = null;

  constructor(private http: HttpClient) { }

  getUsuarios(){
    console.log ('solicitando datos a la api ...');
    return this.http.get(this.ruta, this.httpOptions);
  }
}
