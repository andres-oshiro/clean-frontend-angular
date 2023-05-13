// src/mocks/browser.js
import { setupWorker } from 'msw';
import { controllers } from './apis/controllers';

export const worker = setupWorker(...controllers);
