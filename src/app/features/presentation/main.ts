import { enableProdMode } from '@angular/core';
import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';
import { environment } from 'src/app/core/environments/environment';
import { AppModule } from './app.module';

if (environment.isProduction) {
  enableProdMode();
}

const prepareMws = async () => {
  if (environment.apiBaseUrl === '') {
    const { worker } = await import('src/mock/server/worker');
    return await worker.start();
  }
  return;
};

prepareMws()
  .then(() => {
    return platformBrowserDynamic().bootstrapModule(AppModule);
  })
  .catch((err) => console.error(err));
