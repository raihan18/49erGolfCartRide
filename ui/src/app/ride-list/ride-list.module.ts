import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RideListComponent } from './ride-list.component';
import { Routes, RouterModule } from '@angular/router';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';

const routes: Routes = [
  {
    path: '',
    component: RideListComponent
  }
];

@NgModule({
  declarations: [RideListComponent],
  imports: [
    CommonModule,
    RouterModule.forChild(routes),
    NgbModule
  ],
  exports: [RouterModule]
})
export class RideListModule { }
