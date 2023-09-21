import 'dotenv/config';
import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { VersioningType } from '@nestjs/common';

const port = process.env.PORT || 6000;

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.enableVersioning({
      type: VersioningType.URI,
  });
  await app.listen(port, () => {
    console.log('Listen on port ' + port);
  });
}
bootstrap();
