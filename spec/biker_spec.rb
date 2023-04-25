require './lib/ride'
require './lib/biker'

RSpec.describe Biker do
  describe 'iteration2' do
    describe '#initialize' do
      it 'exists and has attributes' do
        biker = Biker.new("Kenny", 30)

        expect(biker).to be_a(Biker)
        expect(biker.name).to eq("Kenny")
        expect(biker.max_distance).to eq()     end
    end
  end
end