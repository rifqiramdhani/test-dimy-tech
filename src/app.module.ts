import 'dotenv/config';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { MemoryStoredFile } from 'nestjs-form-data';
import { NestjsFormDataModule } from 'nestjs-form-data';
import { GlobalModule } from './module/global.module';
import { SnakeNamingStrategy } from 'typeorm-naming-strategies';
import { DetailTransactionsService } from './detail_transactions/detail_transactions.service';

@Module({
    imports: [
        NestjsFormDataModule.config({ storage: MemoryStoredFile }),
        TypeOrmModule.forRoot({
            type: "mysql",
            host: "localhost",
            port: 3306,
            username: "root",
            password: "",
            database: "test_dimytech",
            autoLoadEntities: true,
            namingStrategy: new SnakeNamingStrategy(),
        }),
        GlobalModule,
    ],
})
export class AppModule {}
