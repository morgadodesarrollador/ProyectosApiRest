import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { UsuariosRoutingModule } from './usuarios-routing.module';
import { UsuariosComponent } from './usuarios.component';
import { ListarComponent } from './listar/listar.component';
import { NewComponent } from './new/new.component';


@NgModule({
  declarations: [UsuariosComponent, ListarComponent, NewComponent],
  imports: [
    CommonModule,
    UsuariosRoutingModule
  ]
})
export class UsuariosModule { }
