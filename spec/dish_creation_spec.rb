describe Dish do

  before do
    @dish = Dish.new(name:"salad", price:70, category: "main")
    @dish.save
  end

it 'should have a name' do
  expect(Dish.first(name: @dish.name).name).to eq "salad"
end

it 'should have a price' do
  expect(Dish.first(name: @dish.name).price).to eq 70
end

it 'should have a category' do

end


end
