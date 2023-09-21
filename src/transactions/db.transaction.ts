import { DataSource } from "typeorm";
import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
@Injectable()
export class DbTransaction {
    private queryRunner = this.dataSource.createQueryRunner();
    constructor(private readonly dataSource: DataSource) {}

    async start(){
        return this.queryRunner.connect();
    }

    async commitTransaction(): Promise<void> {
        return this.queryRunner.commitTransaction();
    }

    async rollbackTransaction(): Promise<void> {
        return this.queryRunner.rollbackTransaction();
    }

    async release(): Promise<void> {
        return this.queryRunner.release();
    }
}
