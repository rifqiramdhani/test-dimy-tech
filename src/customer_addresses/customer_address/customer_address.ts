import { Customer } from "src/customers/customer/customer";
import { Column, Entity, JoinColumn, OneToOne, PrimaryGeneratedColumn } from "typeorm";

@Entity() 
export class CustomerAddress {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    customer_id: number;

    @Column()
    address: string;

    @OneToOne(() => Customer)
    @JoinColumn()
    customer: Customer;
}
