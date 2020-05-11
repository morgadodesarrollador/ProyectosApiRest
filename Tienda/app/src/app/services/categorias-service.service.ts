import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CategoriasServiceService {
  // contiene las cabeceras de la petición
  httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/x-www-form-urlencoded'
    })
  };
  // tslint:disable-next-line: quotemark
  
  ruta = 'http://www.proyectos.com/Tienda/apiPHP/controllers/categorias/listar.php';
  params = null;

  constructor(private http: HttpClient) { }

  bienvenido() {
    console.log ('Hola Mundo ..., Bienvenido al servicio Categorias Service')
  }

  getCategorias(): Observable<any>{
    console.log('Cargando las categorias de la API ...');
    /*
    this.http.post(this.ruta, this.params, this.httpOptions)
      .subscribe(datos => {
        console.log (datos);
      })
      */
     // tslint:disable-next-line: align
     return this.http.get(this.ruta, this.params, this.httpOptions);
  }

}
