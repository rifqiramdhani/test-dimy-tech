import { IsDefined, IsNotEmpty } from "class-validator";

export class TransactionDto {
    @IsNotEmpty()
    @IsDefined()
    customer_address_id: number;
}
