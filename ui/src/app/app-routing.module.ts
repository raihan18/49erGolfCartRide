import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { AuthGuard } from './guards/auth.guard';
import { RegisterComponent } from './register/register.component';
import { ViewComponentComponent } from './view-component/view-component.component';
import { HomeComponent } from './home/home.component';
import { RideListComponent } from './ride-list/ride-list.component';
import { DriverChartComponent } from './driver-chart/driver-chart.component';

const routes: Routes = [
  // { path: '', component: LoginComponent, canActivate: [AuthGuard] },
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },

  { path: '', redirectTo: '/login', pathMatch: 'full' },
  {
    path: 'home',
    component: ViewComponentComponent,  // is this the best practice?
    children: [
      {
          path: '',
          component: HomeComponent
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
  ]
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
