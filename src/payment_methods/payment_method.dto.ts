import { IsDefined, IsNotEmpty } from "class-validator";

export class PaymentMethodDto {
    @IsNotEmpty()
    @IsDefined()
    name: string;

    @IsNotEmpty()
    @IsDefined()
    is_active: number;
}
