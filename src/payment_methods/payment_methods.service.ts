import { Injectable } from "@nestjs/common";
import { Repository } from "typeorm";
import { InjectRepository } from "@nestjs/typeorm";
import { PaymentMethod } from "./payment_method/payment_method";
import { PaymentMethodDto } from "./payment_method.dto";

@Injectable()
export class PaymentMethodsService {
    constructor(
        @InjectRepository(PaymentMethod)
        private repository: Repository<PaymentMethod>,
    ) {}

    async all(): Promise<PaymentMethod[]> {
        return await this.repository.find();
    }

    async find(_id: number): Promise<PaymentMethod[]> {
        return await this.repository.find({
            where: {
                id: _id,
            },
        });
    }

    async create(customer: PaymentMethodDto) {
        return await this.repository.save(customer);
    }

    async update(id: number, customer: PaymentMethodDto) {
        return await this.repository.update({ id }, customer);
    }

    async delete(id: number) {
        return await this.repository.delete({ id });
    }
}
