describe 'Expectation mathcers' do
  let(:a) { '2 cats' }
  let(:b) { '2 cats' }
  let(:c) { 17 }
  let(:d) { 17.0 }

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
