import { Body, Controller, Delete, Get, HttpCode, HttpException, HttpStatus, Param, Post, Put } from '@nestjs/common';
import { CustomerAddressesService } from './customer_addresses.service';
import { FormDataRequest } from 'nestjs-form-data';
import { CustomerAddressDto } from './customer_address.dto';
import { CustomerAddress } from './customer_address/customer_address';

@Controller("customer-addresses")
export class CustomerAddressesController {
    constructor(private service: CustomerAddressesService) {}

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
                    message: "Customer Address not found",
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
                message: "Customer Address created successfully",
            };
        } catch (error) {
            throw new HttpException(
                "Customer Address created failed",
                HttpStatus.EXPECTATION_FAILED,
            );
        }
    }

    @Put(":id")
    @FormDataRequest()
    async update(@Body() request: CustomerAddressDto, @Param() params) {
        const customerAddress = await this.service.find(params.id);

        if (Array.isArray(customerAddress) && customerAddress.length) {
            
            try {
                let updateCustomerAddress = new CustomerAddress();
                updateCustomerAddress.customer_id = request.customer_id;
                updateCustomerAddress.address = request.address;
    
                await this.service.update(params.id, updateCustomerAddress);
                return {
                    status: true,
                    message: "Customer Address updated successfully",
                };
            } catch (error) {
                throw new HttpException(
                    "Customer Address updated failed",
                    HttpStatus.EXPECTATION_FAILED,
                );
            }
           
        } else {
            throw new HttpException(
                {
                    status: false,
                    message: "Customer Address not found",
                },
                HttpStatus.NOT_FOUND,
            );
        }

        // return this.service.update(customer);
    }

    @Delete(":id")
    async delete(@Param() params) {
        const customerAddress = await this.service.find(params.id);
        if (Array.isArray(customerAddress) && customerAddress.length) {
            
            try {
                await this.service.delete(params.id);
                
                return {
                    status: true,
                    message: "Customer Address deleted successfully",
                };
            } catch (error) {
                 throw new HttpException(
                     {
                         status: false,
                         message: "Customer Address deleted failed",
                     },
                     HttpStatus.EXPECTATION_FAILED,
                 );
            }
           
        } else {
            throw new HttpException(
                {
                    status: false,
                    message: "Customer Address not found",
                },
                HttpStatus.NOT_FOUND,
            );
        }
    }
}
