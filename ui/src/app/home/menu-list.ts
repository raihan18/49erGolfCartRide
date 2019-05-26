export interface Menu {
  title: string;
  icon: string;
  link: string;
}

export const menuList: Menu[] = [
  {
    title: 'Manage Tickets',
    icon: 'event',
    link: '/ride-list'
  },
  {
    title: 'Manage Users',
    icon: 'grade',
    link: '/driver-chart'
  }
];