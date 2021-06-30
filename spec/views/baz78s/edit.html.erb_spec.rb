require 'rails_helper'

RSpec.describe "baz78s/edit", type: :view do
  before(:each) do
    @baz78 = assign(:baz78, Baz78.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz78 form" do
    render

    assert_select "form[action=?][method=?]", baz78_path(@baz78), "post" do

      assert_select "input[name=?]", "baz78[foo1]"

      assert_select "input[name=?]", "baz78[foo2]"

      assert_select "input[name=?]", "baz78[foo3]"

      assert_select "input[name=?]", "baz78[foo4]"

      assert_select "textarea[name=?]", "baz78[foo5]"
    end
  end
end
