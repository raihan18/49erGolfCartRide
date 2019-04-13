export interface Ride {
  id: number;
  startTime: string;
  startLoc: string;
  endLoc: string;
  status: number;
}

export interface ColumnConfig {
  field: string;
  title: string;
}

export interface PageConfig<T> {
  data: Array<T>;
  total: number;
}

export interface GridState {
  page: number;
  pageSize: number;
  start: number;
  end: number;
}
