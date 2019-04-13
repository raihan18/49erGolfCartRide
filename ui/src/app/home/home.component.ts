import { Component,
         OnInit,
         ChangeDetectionStrategy } from '@angular/core';
import { menuList, Menu } from './menu-list';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss'],
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class HomeComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }

  get menuList(): Menu[] {
    return menuList;
  }

}
