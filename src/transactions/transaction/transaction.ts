import { CustomerAddress } from "src/customer_addresses/customer_address/customer_address";
import { DetailTransaction } from "src/detail_transactions/detail_transaction/detail_transaction";
import { Entity, Column, PrimaryGeneratedColumn, OneToOne, JoinColumn, OneToMany } from "typeorm";

@Entity()
export class Transaction {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    customer_address_id: number;

    @OneToOne(() => CustomerAddress)
    @JoinColumn()
    customerAddress: CustomerAddress;

    @OneToMany(
        () => DetailTransaction,
        (DetailTransaction) => DetailTransaction.transaction,
    )
    detailTransactions: DetailTransaction[];
}
