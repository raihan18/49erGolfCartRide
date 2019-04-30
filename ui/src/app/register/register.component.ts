import { Component, OnInit } from '@angular/core';
import { UserService } from '../services/user.service';
import { User } from '../models/user';
import { AuthenticationService } from '../services/authentication.service';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent implements OnInit {

  hide = true;
  loading = false;
  user: User = new User();

  constructor(private userService: UserService, private authService: AuthenticationService) { }

  ngOnInit() {
  }

  register() {
    if (this.user.firstName && this.user.firstName.length > 0 &&
      this.user.lastName && this.user.lastName.length > 0 &&
      this.user.phone && this.user.phone.length > 0 &&
      this.user.password && this.user.password.length > 0 &&
      this.user.email && this.user.email.length > 0) {

      this.userService.register(this.user).subscribe(user => {
        const s = null;
    });
    } else {
      alert ('Please Enter All the fields appropriately');
    }
  }

}
