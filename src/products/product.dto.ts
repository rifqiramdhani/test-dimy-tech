import { IsDefined, IsNotEmpty, IsNumber } from "class-validator";

export class ProductDto {
    @IsNotEmpty()
    @IsDefined()
    name: string;

    @IsNotEmpty()
    @IsDefined()
    @IsNumber()
    price: number;
}
