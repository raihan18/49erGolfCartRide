import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DriverChartComponent } from './driver-chart.component';
import { Routes, RouterModule } from '@angular/router';


const routes: Routes = [
  {
    path: '',
    component: DriverChartComponent
  }
];

@NgModule({
  declarations: [DriverChartComponent],
  imports: [
    CommonModule,
    RouterModule.forChild(routes)
  ],
  exports: [RouterModule]
})
export class DriverChartModule { }
