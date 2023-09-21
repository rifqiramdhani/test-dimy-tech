import { CustomerAddressesController } from "src/customer_addresses/customer_addresses.controller";
import { CustomersController } from "src/customers/customers.controller";
import { PaymentMethodsController } from "src/payment_methods/payment_methods.controller";
import { ProductsController } from "src/products/products.controller";
import { TransactionsController } from "src/transactions/transactions.controller";

export const ControllerModule = [
    CustomersController,
    CustomerAddressesController,
    PaymentMethodsController,
    TransactionsController,
    ProductsController,
];