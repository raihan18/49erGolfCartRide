import { Component, OnInit, ChangeDetectionStrategy } from '@angular/core';
import { trigger, state, style, animate, transition } from '@angular/animations';
import { DriverChartService } from './driver-chart.service';
import { DriverRank } from './driver-chart.model';
import { Observable } from 'rxjs';

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

  constructor(public service: DriverChartService) { }

  drivers: Observable<DriverRank[]>;

  ngOnInit() {
    this.drivers = this.service.getDriverRank();
  }

}
