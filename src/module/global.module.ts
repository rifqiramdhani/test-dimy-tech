import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { NestjsFormDataModule } from 'nestjs-form-data';
import { ControllerModule } from './controller.module'
import { ProviderModule } from './provider.module';
import { EntityModule } from './entity,module';

@Module({
    imports: [
        NestjsFormDataModule,
        TypeOrmModule.forFeature([...EntityModule]),
    ],
    controllers: [...ControllerModule],
    providers: [...ProviderModule],
})
export class GlobalModule {}