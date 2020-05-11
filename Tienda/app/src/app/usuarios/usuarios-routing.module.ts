import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { UsuariosComponent } from './usuarios.component';
import { ListarComponent } from './listar/listar.component';
import { NewComponent } from './new/new.component';

const routes: Routes = [
  {
    path: '', component: UsuariosComponent, children: [
      { path: 'listar', component: ListarComponent  },
      { path: 'new', component: NewComponent  },
    ]
  }

];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class UsuariosRoutingModule { }
