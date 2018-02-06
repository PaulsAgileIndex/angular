import { Component, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'my-sub',
  template: `
    <div class="well topmargin">
      <p>SubComponent: {{ myBinding }}</p>
      <button (click)="myBinding = 'CCC'" class="btn btn-default">CCC</button>
      <button (click)="myBinding = 'DDD'" class="btn btn-default">DDD</button>
    </div>
  `
})
export class SubComponent {
  myBindingValue: string;

  @Output() myBindingChange = new EventEmitter<string>();
  @Input() get myBinding() {
    return this.myBindingValue;
  }

  set myBinding(v: string) {
    this.myBindingValue = v;
    this.myBindingChange.emit(this.myBindingValue);
  }
}
