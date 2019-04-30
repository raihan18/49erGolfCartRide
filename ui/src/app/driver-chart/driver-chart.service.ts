import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { DriverRank } from './driver-chart.model';

@Injectable({
  providedIn: 'root'
})
export class DriverChartService {

  constructor(private http: HttpClient) {}

  getDriverRank() {
    return this.http.get<DriverRank[]>('http://localhost:8000/api/list/top_three_drivers/');
  }
}
