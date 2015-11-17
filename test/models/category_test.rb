require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  test 'is default category present in db' do
    category = Category.find_by_name('No Category')

    assert_equal 'No Category', category.name
  end

  test 'add new product category in db' do
    Category.create! name: 'Women'

    find_women_category = Category.find_by_name('Women')

    assert_equal 'Women', find_women_category.name
  end

end
