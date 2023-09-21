import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { Repository } from "typeorm";
import { InjectRepository} from "@nestjs/typeorm";
import { Transaction as TransactionEntity } from "./transaction/transaction";
import { TransactionDto } from "./transaction.dto";
import { DetailTransaction } from "src/detail_transactions/detail_transaction/detail_transaction";

@Injectable()
export class TransactionsService {

    constructor(
        @InjectRepository(TransactionEntity)
        private repository: Repository<TransactionEntity>,
        @InjectRepository(DetailTransaction)
        private repositoryDetailTransaction: Repository<DetailTransaction>,
    ) {}

    async all(): Promise<TransactionEntity[]> {
        return await this.repository.find({
            relations: {
                detailTransactions: {
                    paymentMethod: true,
                    product: true,
                },
                customerAddress: true
            },
        });
    }

    async find(_id: number): Promise<TransactionEntity[]> {
        return await this.repository.find({
            where: {
                id: _id,
            },
            relations: {
                detailTransactions: {
                    paymentMethod: true,
                    product: true,
                },
                customerAddress: true,
            },
        });
    }

    async create(transaction: any): Promise<boolean> {
        try {
            const dataTransaction = await this.repository.save({
                customer_address_id: transaction.customer_address_id,
            });

            for (let detail_transaction of transaction.detail_transaction) {
                try {
                    await this.repositoryDetailTransaction.save({
                        transaction_id: dataTransaction.id,
                        payment_method_id: detail_transaction.payment_method_id,
                        product_id: detail_transaction.product_id,
                    });
                } catch (error) {
                    throw new HttpException(
                        {
                            status: false,
                            message: "Transaction created failed",
                            detailError: error,
                        },
                        HttpStatus.EXPECTATION_FAILED,
                    );
                }
            }

            return true;
        } catch (error) {
            return false;
        }
    }

    async delete(id: number) {
        return await this.repository.delete({ id });
    }
}
