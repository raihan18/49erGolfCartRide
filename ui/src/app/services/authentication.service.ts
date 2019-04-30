import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject, Observable } from 'rxjs';
import { User } from '../models/user';
import { Router } from '@angular/router';

@Injectable({ providedIn: 'root' })
export class AuthenticationService {
    private currentUserSubject: BehaviorSubject<User>;
    private apiURL = 'http://localhost:8000';

    constructor(private http: HttpClient,
                private router: Router) {
        this.currentUserSubject = new BehaviorSubject<User>(JSON.parse(sessionStorage.getItem('currentUser')));
    }

    public get currentUserValue(): User {
        return this.currentUserSubject.value;
    }

    login(username: string, password: string) {
        this.http.post<any>(`${this.apiURL}/token/`, {username, password})
            .subscribe(user => {
                // login successful if there's a jwt token in the response
                if (user && user.token) {
                    // store user details and jwt token in local storage to keep user logged in between page refreshes
                    sessionStorage.setItem('currentUser', JSON.stringify(user));
                    this.currentUserSubject.next(user);
                    this.router.navigate(['/home']);
                }
            });
    }

    logout() {
        // remove user from local storage to log user out
        sessionStorage.removeItem('currentUser');
        this.currentUserSubject.next(null);
    }
}
