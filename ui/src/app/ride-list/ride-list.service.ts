import { Injectable } from '@angular/core';
import { Ride, PageConfig, GridState } from './ride-list.model';
import { BehaviorSubject, Subject, Observable, of } from 'rxjs';
import { debounceTime,
         delay,
         switchMap,
         tap } from 'rxjs/operators';
import { RIDES } from './rides';

@Injectable()
export class RideListService {

  private _search$ = new Subject<void>();
  private _loading$ = new BehaviorSubject<boolean>(true);
  private _pageConfig$ = new BehaviorSubject<PageConfig<Ride>>({
    data: [],
    total: 0
  });
  private _gridState: GridState = {
    page: 1,
    pageSize: 10,
    start: 0,
    end: 0
  };

  constructor() { }

  getRideList() {
    this._search$.pipe(
      tap(() => this._loading$.next(true)),
      debounceTime(200),
      switchMap(() => this._search()),
      delay(200),
      tap(() => this._loading$.next(false))
    ).subscribe(result => {
      this._pageConfig$.next(result);
    });

    this._search$.next();
  }

  get pageConfig$() {
    return this._pageConfig$.asObservable();
  }

  get gridState() {
    return this._gridState;
  }

  get page() {
    return this._gridState.page;
  }

  set page(page: number) {
    this._set({page});
  }

  get loading$() {
    return this._loading$.asObservable();
  }

  private _search(): Observable<PageConfig<Ride>> {
    const {pageSize, page} = this._gridState;

    // pagination
    const data = RIDES.slice((page - 1) * pageSize, (page - 1) * pageSize + pageSize);
    const total = RIDES.length;
    this._gridState.start = (page === 1) ? 1 : (page - 1) * pageSize;
    this._gridState.end = (page * pageSize > total) ? total : page * pageSize;
    return of({data, total});
  }

  private _set(patch: Partial<GridState>) {
    Object.assign(this._gridState, patch);
    this._search$.next();
  }
}
