import { Component, OnInit, ChangeDetectionStrategy } from '@angular/core';

@Component({
  selector: 'app-ride-list',
  templateUrl: './ride-list.component.html',
  styleUrls: ['./ride-list.component.scss'],
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class RideListComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }

}
