import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { AuthGuard } from './guards/auth.guard';
import { RegisterComponent } from './register/register.component';

const routes: Routes = [
  // { path: '', component: LoginComponent, canActivate: [AuthGuard] },
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },

  { path: '', redirectTo: '/login', pathMatch: 'full' },
  {
    path: 'home',
    loadChildren: './home/home.module#HomeModule',  // is this the best practice?
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
