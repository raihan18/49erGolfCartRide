import { Component,
         OnInit,
         ChangeDetectionStrategy } from '@angular/core';
import { ColumnConfig, Ride } from './ride-list.model';
import { RideListService } from './ride-list.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

export const COLUMNS: ColumnConfig[] = [
  {field: 'id', title: 'Id'},
  {field: 'startTime', title: 'Start Time'},
  {field: 'endTime', title: 'End Time'},
  {field: 'startLoc', title: 'Pick up Location'},
  {field: 'endLoc', title: 'Drop Off Location'},
  {field: 'status', title: 'Status'},
  {field: 'rating', title: 'Rating'}
];

@Component({
  selector: 'app-ride-list',
  templateUrl: './ride-list.component.html',
  styleUrls: ['./ride-list.component.scss'],
  changeDetection: ChangeDetectionStrategy.OnPush,
  providers: [RideListService]
})
export class RideListComponent implements OnInit {

  currentRate = 5;

  constructor(public service: RideListService,
              private modalService: NgbModal) {}

  ngOnInit() {
    this.service.getRideList();
  }

  get columns() {
    return COLUMNS;
  }

  canRate(data: Ride) {
    return data.status === 'complete' && data.rating === null;
  }

  open(content, data: Ride) {
    this.currentRate = 5;
    this.modalService.open(content, {ariaLabelledBy: 'modal-basic-title'}).result.then((result) => {
      this.service.rateRide(data.id, this.currentRate);
    }, (reason) => {
    });
  }

}
