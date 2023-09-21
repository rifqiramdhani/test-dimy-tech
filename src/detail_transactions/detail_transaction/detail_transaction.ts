import { PaymentMethod } from "src/payment_methods/payment_method/payment_method";
import { Product } from "src/products/product/product";
import { Transaction } from "src/transactions/transaction/transaction";
import {
    Column,
    Entity,
    JoinColumn,
    OneToOne,
    PrimaryGeneratedColumn,
} from "typeorm";

@Entity()
export class DetailTransaction {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    transaction_id: number;

    @Column()
    payment_method_id: number;

    @Column()
    product_id: number;

    @OneToOne(() => Transaction)
    @JoinColumn()
    transaction: Transaction;

    @OneToOne(() => Product)
    @JoinColumn()
    product: Product;

    @OneToOne(() => PaymentMethod)
    @JoinColumn()
    paymentMethod: PaymentMethod;
}
