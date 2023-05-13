import { rest } from 'msw';
import * as data from 'src/mock/data/sample/post.json';

export const postSample = rest.post('/sample', (req, res, ctx) => {
  return res(ctx.status(200), ctx.json(data));
});
