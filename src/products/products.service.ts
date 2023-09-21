import { Injectable } from "@nestjs/common";
import { Repository } from "typeorm";
import { InjectRepository } from "@nestjs/typeorm";
import { Product } from "./product/product";
import { ProductDto } from "./product.dto";

@Injectable()
export class ProductsService {
    constructor(
        @InjectRepository(Product)
        private repository: Repository<Product>,
    ) {}

    async all(): Promise<Product[]> {
        return await this.repository.find();
    }

    async find(_id: number): Promise<Product[]> {
        return await this.repository.find({
            where: {
                id: _id,
            },
        });
    }

    async create(product: ProductDto) {
        return await this.repository.save(product);
    }

    async update(id: number, product: ProductDto) {
        return await this.repository.update({ id }, product);
    }

    async delete(id: number) {
        return await this.repository.delete({ id });
    }
}
