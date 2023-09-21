import { CustomerAddress } from "src/customer_addresses/customer_address/customer_address";
import { Customer } from "src/customers/customer/customer";
import { DetailTransaction } from "src/detail_transactions/detail_transaction/detail_transaction";
import { PaymentMethod } from "src/payment_methods/payment_method/payment_method";
import { Product } from "src/products/product/product";
import { Transaction } from "src/transactions/transaction/transaction";

export const EntityModule = [
    Customer,
    CustomerAddress,
    PaymentMethod,
    Transaction,
    Product,
    DetailTransaction
];
