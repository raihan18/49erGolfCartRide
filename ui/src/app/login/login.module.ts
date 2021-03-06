import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './login.component';
import { MatButtonModule,
         MatFormFieldModule,
         MatIconModule,
         MatInputModule } from '@angular/material';

const routes: Routes = [
  {
    path: '',
    component: LoginComponent
  }
];

@NgModule({
  declarations: [LoginComponent],
  imports: [
    CommonModule,
    MatButtonModule,
    MatFormFieldModule,
    MatIconModule,
    FormsModule,
    MatInputModule,
    RouterModule.forChild(routes)
  ],
  exports: [RouterModule]
})
export class LoginModule { }
