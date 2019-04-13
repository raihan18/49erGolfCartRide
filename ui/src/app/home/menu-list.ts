export interface Menu {
  title: string;
  icon: string;
  link: string;
}

export const menuList: Menu[] = [
  {
    title: 'My Rides',
    icon: 'event',
    link: '/ride-list'
  },
  {
    title: 'Top Drivers',
    icon: 'grade',
    link: '/driver-chart'
  }
];