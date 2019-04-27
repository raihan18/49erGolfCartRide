import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { RegisterComponent } from './register.component';
import { MatButtonModule,
         MatFormFieldModule,
         MatIconModule,
         MatInputModule } from '@angular/material';

const routes: Routes = [
  {
    path: '',
    component: RegisterComponent
  }
];

@NgModule({
  declarations: [RegisterComponent],
  imports: [
    CommonModule,
    MatButtonModule,
    MatFormFieldModule,
    MatIconModule,
    MatInputModule,
    RouterModule.forChild(routes)
  ],
  exports: [RouterModule]
})
export class RegisterModule { }
