describe 'Expectation mathcers' do
  let(:a) { '2 cats' }
  let(:b) { '2 cats' }
  let(:c) { 17 }
  let(:d) { 17.0 }

  describe 'equivalence matchers' do
    it 'will match with loose equality with #eq' do
      expect(a).to eq(b)
      expect(a).to be == b # synonim to #eq

      expect(c).to eq(d) # still works
    end

    it 'will match value eqality with #eql' do
      expect(a).to eql(b)
      expect(c).not_to eql(d)
    end

    it 'will match identity equality with #equal' do
      expect(a).not_to equal(b)
      e = a
      expect(a).to equal(e) # same object
      expect(a).to be(e)    #synonim to equal
    end
  end

  describe 'truthiness matchers' do
    it 'will match true or false' do
      expect(1 < 2).to be true
      expect(1 > 2).to be false

      expect('str').not_to be true
      expect(nil).not_to be false
      expect(0).not_to be false
    end

    it 'will match truthy/falsey' do
      expect(1 < 2).to be_truthy
      expect(1 > 2).to be_falsey

      expect('str').to be_truthy
      expect(nil).to be_falsey
      expect(0).not_to be_falsey
    end

    it 'will match nil' do
      expect(nil).to be nil
      expect(nil).to be_nil

      expect(false).not_to be nil
      expect(0).not_to be nil
    end
  end
end
