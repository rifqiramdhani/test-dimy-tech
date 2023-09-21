import { Entity, Column, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class PaymentMethod {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    name: string;

    @Column()
    is_active: number;
}
