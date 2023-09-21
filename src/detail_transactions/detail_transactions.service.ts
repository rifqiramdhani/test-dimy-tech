import { Injectable } from "@nestjs/common";
import { Repository } from "typeorm";
import { InjectRepository } from "@nestjs/typeorm";
import { DetailTransaction } from "./detail_transaction/detail_transaction";

@Injectable()
export class DetailTransactionsService {
    constructor(
        @InjectRepository(DetailTransaction)
        private repository: Repository<DetailTransaction>,
    ) {}

    async create(transaction: any) {
        return await this.repository.save(transaction);
    }

    async update(id: number, transaction: DetailTransaction) {
        return await this.repository.update({ id }, transaction);
    }

    async delete(id: number) {
        return await this.repository.delete({ id });
    }
}
