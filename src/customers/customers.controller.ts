import {
    Controller,
    Post,
    Body,
    Get,
    Put,
    Delete,
    Param,
    HttpCode,
    HttpStatus,
    HttpException,
} from "@nestjs/common";
import { CustomersService } from "./customers.service";
import { FormDataRequest } from "nestjs-form-data";
import { Customer } from "./customer/customer";
import { CustomerDto } from "./customers.dto";

@Controller("customers")
export class CustomersController {
    constructor(private service: CustomersService) {}
 
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
                    message: "Customer not found",
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
                message: "Customer created successfully",
            };
        } catch (error) {
            throw new HttpException(
                "Customer created failed",
                HttpStatus.EXPECTATION_FAILED,
            );
        }
    }

    @Put(":id")
    @FormDataRequest()
    async update(@Body() request: CustomerDto, @Param() params) {
        const customer = await this.service.find(params.id);

        if (Array.isArray(customer) && customer.length) {
            
            try {

                let updateCustomer = new Customer();
                updateCustomer.customer_name = request.customer_name;

                await this.service.update(params.id, updateCustomer);
                
                return {
                    status: true,
                    message: "Customer updated successfully",
                };

            } catch (error) {
                throw new HttpException(
                    "Customer updated failed",
                    HttpStatus.EXPECTATION_FAILED,
                );
            }

            
        } else {
            throw new HttpException(
                {
                    status: false,
                    message: "Customer not found",
                },
                HttpStatus.NOT_FOUND,
            );
        }

        // return this.service.update(customer);
    }

    @Delete(":id")
    async delete(@Param() params) {

        const customer = await this.service.find(params.id);
        if (Array.isArray(customer) && customer.length) {
           
            try {
                await this.service.delete(params.id);
                return {
                    message: "Customer deleted successfully",
                };
            } catch (error) {
                throw new HttpException(
                    {
                        status: false,
                        message: "Customer deleted failed",
                    },
                    HttpStatus.EXPECTATION_FAILED,
                );
            }
        } else {
            throw new HttpException(
                {
                    status: false,
                    message: "Customer not found",
                },
                HttpStatus.NOT_FOUND,
            );
        }
    }
}
