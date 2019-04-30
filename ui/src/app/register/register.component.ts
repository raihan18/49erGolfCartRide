import { Component, OnInit } from '@angular/core';
import { UserService } from '../services/user.service';
import { User } from '../models/user';
import { Router } from '@angular/router';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent implements OnInit {

  hide = true;
  loading = false;
  user: User = new User();

  constructor(private userService: UserService,
              private router: Router) { }

  ngOnInit() {
  }

  register() {
    if (this.user.first_name && this.user.first_name.length > 0 &&
      this.user.last_name && this.user.last_name.length > 0 &&
      this.user.phone && this.user.phone.length > 0 &&
      this.user.password && this.user.password.length > 0 &&
      this.user.email && this.user.email.length > 0) {
      this.user.username = this.user.email.substr(0, this.user.email.indexOf('@'));

      this.userService.register(this.user).subscribe(user => {
        this.router.navigate(['/login']);
    });
    } else {
      alert ('Please Enter All the fields appropriately');
    }
  }

}
