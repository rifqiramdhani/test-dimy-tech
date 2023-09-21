import { Injectable } from '@nestjs/common';
import { CustomerAddress } from './customer_address/customer_address';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';
import { CustomerAddressDto } from './customer_address.dto';

@Injectable()
export class CustomerAddressesService {
    constructor(
        @InjectRepository(CustomerAddress)
        private repository: Repository<CustomerAddress>,
    ) {}

    async all(): Promise<CustomerAddress[]> {
        return await this.repository.find({
            relations: {
                customer: true
            }
        });
    }

    async find(_id: number): Promise<CustomerAddress[]> {
        return await this.repository.find({
            where: {
                id: _id,
            },
            relations: {
                customer: true,
            },
        });
    }

    async create(customer: CustomerAddress) {
        return await this.repository.save(customer);
    }

    async update(id: number, customer: CustomerAddressDto) {
        return await this.repository.update({ id }, customer);
    }

    async delete(id: number) {
        return await this.repository.delete({ id });
    }
}
