require File.expand_path(File.dirname(__FILE__) + '/../eratos')

describe Eratos do
  specify { expect(Eratos.all_prime(3)).to eq [2, 3] }
  specify { expect(Eratos.all_prime(30)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }
  specify { expect(Eratos.all_prime(100)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97] }
end