require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = Product.new(title: "q", description: "sas", image_url: 'images/2.jpg', price: 11)
  end

  test "should be valid" do
    assert @product.valid?
  end

end
