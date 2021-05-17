import express, { Request, Response } from 'express';

const app = express();

app.get('/', (_req: Request, res: Response) => {
  res.status(200).send('Hello World');
});

app.listen(8080, () => {
  console.log('Listening on http://0.0.0.0:8080');
});
