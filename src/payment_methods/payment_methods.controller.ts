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
import { PaymentMethodsService } from "./payment_methods.service";
import { PaymentMethodDto } from "./payment_method.dto";
import { PaymentMethod } from "./payment_method/payment_method";

@Controller("payment-methods")
export class PaymentMethodsController {
    constructor(private service: PaymentMethodsService) {}

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
                    message: "Payment method not found",
                },
                HttpStatus.NOT_FOUND,
            );
        }
    }

    @Post()
    @HttpCode(200)
    @FormDataRequest()
    async create(@Body() request: PaymentMethodDto) {
        try {
            await this.service.create(request);
            return {
                status: true,
                message: "Payment method created successfully",
            };
        } catch (error) {
            throw new HttpException(
                "Payment method created failed",
                HttpStatus.EXPECTATION_FAILED,
            );
        }
    }

    @Put(":id")
    @FormDataRequest()
    async update(@Body() request: PaymentMethodDto, @Param() params) {
        const paymentMethod = await this.service.find(params.id);

        if (Array.isArray(paymentMethod) && paymentMethod.length) {
            try {
                let updatePaymentMethod = new PaymentMethod();
                updatePaymentMethod.is_active = request.is_active;
                updatePaymentMethod.name = request.name;

                await this.service.update(params.id, updatePaymentMethod);
                return {
                    status: true,
                    message: "Payment method updated successfully",
                };
            } catch (error) {
                throw new HttpException(
                    "Payment method updated failed",
                    HttpStatus.EXPECTATION_FAILED,
                );
            }
        } else {
            throw new HttpException(
                {
                    status: false,
                    message: "Payment method not found",
                },
                HttpStatus.NOT_FOUND,
            );
        }

    }

    @Delete(":id")
    async delete(@Param() params) {
        const paymentMethod = await this.service.find(params.id);
        if (Array.isArray(paymentMethod) && paymentMethod.length) {
            try {
                await this.service.delete(params.id);

                return {
                    status: true,
                    message: "Payment method deleted successfully",
                };
            } catch (error) {
                throw new HttpException(
                    {
                        status: false,
                        message: "Payment method deleted failed",
                    },
                    HttpStatus.EXPECTATION_FAILED,
                );
            }
        } else {
            throw new HttpException(
                {
                    status: false,
                    message: "Payment method not found",
                },
                HttpStatus.NOT_FOUND,
            );
        }
    }
}
