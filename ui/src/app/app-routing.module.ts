import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  { path: '', redirectTo: '/login', pathMatch: 'full' },
  { path: 'home',
    loadChildren: './home/home.module#HomeModule',
    pathMatch: 'full'
  },
  {
    path: 'login',
    loadChildren: './login/login.module#LoginModule',
    pathMatch: 'full'
  },
  {
    path: 'register',
    loadChildren: './register/register.module#RegisterModule',
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
