import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RideListComponent } from './ride-list.component';
import { Routes, RouterModule } from '@angular/router';

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
    RouterModule.forChild(routes)
  ],
  exports: [RouterModule]
})
export class RideListModule { }
