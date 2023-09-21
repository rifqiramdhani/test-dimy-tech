import { IsDefined, IsNotEmpty } from "class-validator";

export class CustomerAddressDto {
    @IsNotEmpty()
    @IsDefined()
    address: string;

    @IsNotEmpty()
    @IsDefined()
    customer_id: number;
}
