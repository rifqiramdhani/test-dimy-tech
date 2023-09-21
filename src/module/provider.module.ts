import { CustomerAddressesService } from "src/customer_addresses/customer_addresses.service";
import { CustomersService } from "src/customers/customers.service";
import { PaymentMethodsService } from "src/payment_methods/payment_methods.service";
import { ProductsService } from "src/products/products.service";
import { TransactionsService } from "src/transactions/transactions.service";

export const ProviderModule = [
    CustomersService,
    CustomerAddressesService,
    PaymentMethodsService,
    TransactionsService,
    ProductsService,
];
