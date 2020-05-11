import { Component, OnInit } from '@angular/core';
import { UsuariosService } from '../../services/usuarios.service';

@Component({
  selector: 'app-listar',
  templateUrl: './listar.component.html',
  styleUrls: ['./listar.component.css']
})
export class ListarComponent implements OnInit {
  usuarios: any;
  constructor(private uS: UsuariosService) {
    console.log('solicitando los datos al servicio ...');
    this.uS.getUsuarios()
      .subscribe (datos => {
        console.log(datos); 
        this.usuarios = datos; // los datos que recibo de la api los almaceno en usuarios
      })

   }

  ngOnInit() {
  }

}
