import { Component, OnInit, ChangeDetectionStrategy } from '@angular/core';
import { trigger, state, style, animate, transition } from '@angular/animations';
import { DRIVER_RANK } from './driver-rank';

@Component({
  selector: 'app-driver-chart',
  templateUrl: './driver-chart.component.html',
  styleUrls: ['./driver-chart.component.scss'],
  changeDetection: ChangeDetectionStrategy.OnPush,
  animations: [
    trigger('fadeInOut', [
      state('void', style({opacity: 0})),
      transition('void <=> *', animate(1000)),
    ])
  ]
})
export class DriverChartComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }

  get drivers() {
    return DRIVER_RANK;
  }

}
