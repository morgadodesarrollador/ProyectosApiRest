import { Component, OnInit } from '@angular/core';
import { IUsario } from '../../../interfaces/usuariosInterface';
import { NgForm } from '@angular/forms';
import { UsuariosService } from 'src/app/services/usuarios.service';

@Component({
  selector: 'app-new',
  templateUrl: './new.component.html',
  styleUrls: ['./new.component.css']
})
export class NewComponent implements OnInit {
  public usuario: IUsario = {
    email: 'pepe@gmail.com',
    nombre: 'pepe martinez',
    password: '1234',
    rol: 'administrador',
    foto: 'pepe.jpg'
  };
  constructor(private uS: UsuariosService) { }

  public new(fRegister: NgForm) {
    if (fRegister.invalid) { 
      console.log ('Formulario inválido');
      return; 
    };
    this.uS.newUsuario(this.usuario)
      .subscribe (data => {
        console.log (data);
    })
   
  }

  ngOnInit() {
  }

}
