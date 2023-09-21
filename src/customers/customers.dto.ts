import { IsDefined, IsNotEmpty } from "class-validator";

export class CustomerDto {
    @IsNotEmpty()
    @IsDefined()
    customer_name: string;
}
