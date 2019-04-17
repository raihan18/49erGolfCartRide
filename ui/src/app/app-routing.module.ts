import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  { path: '', redirectTo: '/home', pathMatch: 'full' },
  {
    path: 'home',
    loadChildren: './home/home.module#HomeModule',
    pathMatch: 'full'
  },
  {
    path: 'ride-list',
    loadChildren: './ride-list/ride-list.module#RideListModule',
    pathMatch: 'full'
  },
  {
    path: 'driver-chart',
    loadChildren: './driver-chart/driver-chart.module#DriverChartModule',
    pathMatch: 'full'
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
