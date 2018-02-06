import { Component } from '@angular/core';

@Component({
  selector: 'my-root',
  template: `
    <div class="container">
      <div class="row">
        <p>AppComponent: {{ foobar }}</p>
        <button (click)="foobar = 'AAA'" class="btn btn-default">AAA</button>
        <button (click)="foobar = 'BBB'" class="btn btn-default">BBB</button>

        <my-sub [(myBinding)]="foobar"></my-sub>
      </div>
    </div>
  `
})
export class AppComponent {
  foobar: string = '000';
}
