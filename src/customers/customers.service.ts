import { Injectable } from '@nestjs/common';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';
import { Customer } from './customer/customer';
import { CustomerDto } from './customers.dto';

@Injectable()
export class CustomersService {
    constructor(
        @InjectRepository(Customer)
        private repository: Repository<Customer>,
    ) {}

    async all(): Promise<Customer[]> {
        return await this.repository.find();
    }

    async find(_id: number): Promise<Customer[]> {
        return await this.repository.findBy({
            id: _id,
        });
    }

    async create(customer: Customer) {
        return await this.repository.save(customer);
    }

    async update(id: number, customer: CustomerDto) {
        return await this.repository.update({ id }, customer);
    }

    async delete(id: number) {
        return await this.repository.delete({ id });
    }
}
