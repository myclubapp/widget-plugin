import { registerPlugin } from '@capacitor/core';

import type { MyClubAppWidgetPlugin } from './definitions';

const MyClubAppWidget = registerPlugin<MyClubAppWidgetPlugin>(
  'MyClubAppWidget',
  {
    web: () => import('./web').then(m => new m.MyClubAppWidgetWeb()),
  },
);

export * from './definitions';
export { MyClubAppWidget };
