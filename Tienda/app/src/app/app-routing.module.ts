import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { CategoriasModule } from './categorias/categorias.module';
import { HomeComponent } from './components/home/home.component';
import { UsuariosModule } from './usuarios/usuarios.module';


const routes: Routes = [
  { path: 'home', pathMatch: 'full', component: HomeComponent },
  {
    path: 'categorias',
    loadChildren: () => import('./categorias/categorias.module').then( m => m.CategoriasModule)
  },
  {
    path: 'usuarios',
    loadChildren: () => import('./usuarios/usuarios.module').then( m => m.UsuariosModule)
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
