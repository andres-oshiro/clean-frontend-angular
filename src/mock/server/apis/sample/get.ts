import { rest } from 'msw';
import * as data from 'src/mock/data/sample/get.json';

export const getSample = rest.get('/sample', (req, res, ctx) => {
  return res(ctx.status(200), ctx.json(data));
});
