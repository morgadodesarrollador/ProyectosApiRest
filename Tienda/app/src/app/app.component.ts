import { Component } from '@angular/core';
import { CategoriasServiceService } from './services/categorias-service.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'appVehiculos';

  categorias: any;

  constructor(private catService: CategoriasServiceService){  }

  pulsar(){
    console.log ('pulsado ...');

    this.catService.getCategorias()
      .subscribe (datos => {
        console.log ('recibiendo las categorias en el componente');
        this.categorias = datos;
        console.log(this.categorias);
      });
    console.log ('datos recibidos....');
  }

}
