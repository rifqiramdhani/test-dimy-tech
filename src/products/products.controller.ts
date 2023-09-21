import {
    Body,
    Controller,
    Delete,
    Get,
    HttpCode,
    HttpException,
    HttpStatus,
    Param,
    Post,
    Put,
} from "@nestjs/common";
import { FormDataRequest } from "nestjs-form-data";
import { ProductsService } from "./products.service";
import { ProductDto } from "./product.dto";
import { Product } from "./product/product";

@Controller("products")
export class ProductsController {
    constructor(private service: ProductsService) {}

    @Get()
    @HttpCode(200)
    index() {
        return this.service.all();
    }

    @Get(":id")
    @HttpCode(200)
    async show(@Param() params) {
        let result = await this.service.find(params.id);
        if (Array.isArray(result) && result.length) {
            return {
                status: true,
                data: result,
            };
        } else {
            throw new HttpException(
                {
                    status: false,
                    message: "Product not found",
                },
                HttpStatus.NOT_FOUND,
            );
        }
    }

    @Post()
    @HttpCode(200)
    @FormDataRequest()
    async create(@Body() request) {
        try {
            await this.service.create(request);
            return {
                status: true,
                message: "Product created successfully",
            };
        } catch (error) {
            throw new HttpException(
                "Product created failed",
                HttpStatus.EXPECTATION_FAILED,
            );
        }
    }

    @Put(":id")
    @FormDataRequest()
    async update(@Body() request: ProductDto, @Param() params) {
        const product = await this.service.find(params.id);

        if (Array.isArray(product) && product.length) {
            try {
                let updateProduct = new Product();
                updateProduct.name = request.name;
                updateProduct.price = request.price;

                await this.service.update(params.id, updateProduct);
                return {
                    status: true,
                    message: "Product updated successfully",
                };
            } catch (error) {
                throw new HttpException(
                    "Product updated failed",
                    HttpStatus.EXPECTATION_FAILED,
                );
            }
        } else {
            throw new HttpException(
                {
                    status: false,
                    message: "Product not found",
                },
                HttpStatus.NOT_FOUND,
            );
        }
    }

    @Delete(":id")
    async delete(@Param() params) {
        const product = await this.service.find(params.id);
        if (Array.isArray(product) && product.length) {
            try {
                await this.service.delete(params.id);

                return {
                    status: true,
                    message: "Product deleted successfully",
                };
            } catch (error) {
                throw new HttpException(
                    {
                        status: false,
                        message: "Product deleted failed",
                    },
                    HttpStatus.EXPECTATION_FAILED,
                );
            }
        } else {
            throw new HttpException(
                {
                    status: false,
                    message: "Product not found",
                },
                HttpStatus.NOT_FOUND,
            );
        }
    }
}
