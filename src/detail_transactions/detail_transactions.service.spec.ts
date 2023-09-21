import { Test, TestingModule } from '@nestjs/testing';
import { DetailTransactionsService } from './detail_transactions.service';

describe('DetailTransactionsService', () => {
  let service: DetailTransactionsService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [DetailTransactionsService],
    }).compile();

    service = module.get<DetailTransactionsService>(DetailTransactionsService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
