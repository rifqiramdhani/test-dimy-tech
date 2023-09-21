import { PaymentMethod } from './payment_method';

describe('PaymentMethod', () => {
  it('should be defined', () => {
    expect(new PaymentMethod()).toBeDefined();
  });
});
