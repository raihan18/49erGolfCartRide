import { Component,
         OnInit,
         ChangeDetectionStrategy } from '@angular/core';
import { ColumnConfig } from './ride-list.model';
import { RideListService } from './ride-list.service';

export const COLUMNS: ColumnConfig[] = [
  {field: 'id', title: 'Id'},
  {field: 'startTime', title: 'Start Time'},
  {field: 'startLoc', title: 'Pick up Location'},
  {field: 'endLoc', title: 'Drop Off Location'},
  {field: 'status', title: 'Status'}
];

@Component({
  selector: 'app-ride-list',
  templateUrl: './ride-list.component.html',
  styleUrls: ['./ride-list.component.scss'],
  changeDetection: ChangeDetectionStrategy.OnPush,
  providers: [RideListService]
})
export class RideListComponent implements OnInit {

  constructor(public service: RideListService) {}

  ngOnInit() {
    this.service.getRideList();
  }

  get columns() {
    return COLUMNS;
  }

}
