import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { User } from '../models/user';

@Injectable({ providedIn: 'root' })
export class UserService {
    constructor(private http: HttpClient) { }
    private apiURL = 'http://localhost:8000';

    getAll() {
        return this.http.get<User[]>(`${this.apiURL}/users`);
    }

    getById(id: number) {
        return this.http.get(`${this.apiURL}/users/${id}`);
    }

    register(user: User) {
        return this.http.post<any>(`${this.apiURL}/register`, user);
    }

    update(user: User) {
        return this.http.put(`${this.apiURL}/users/${user.id}`, user);
    }
}
