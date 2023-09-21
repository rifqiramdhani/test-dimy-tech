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
import { TransactionsService } from "./transactions.service";
import { Transaction } from "./transaction/transaction";
import { TransactionDto } from "./transaction.dto";
import { randomInt } from "crypto";

@Controller("transactions")
export class TransactionsController {
    constructor(
        private service: TransactionsService
    ) {}

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
                    message: "Transaction not found",
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
                message: "Transaction created successfully",
            };

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

    @Delete(":id")
    async delete(@Param() params) {
        const transaction = await this.service.find(params.id);
        if (Array.isArray(transaction) && transaction.length) {
            try {
                await this.service.delete(params.id);

                return {
                    status: true,
                    message: "Transaction deleted successfully",
                };
            } catch (error) {
                throw new HttpException(
                    {
                        status: false,
                        message: "Transaction deleted failed",
                    },
                    HttpStatus.EXPECTATION_FAILED,
                );
            }
        } else {
            throw new HttpException(
                {
                    status: false,
                    message: "Transaction not found",
                },
                HttpStatus.NOT_FOUND,
            );
        }
    }
}
