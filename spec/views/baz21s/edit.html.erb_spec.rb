require 'rails_helper'

RSpec.describe "baz21s/edit", type: :view do
  before(:each) do
    @baz21 = assign(:baz21, Baz21.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz21 form" do
    render

    assert_select "form[action=?][method=?]", baz21_path(@baz21), "post" do

      assert_select "input[name=?]", "baz21[foo1]"

      assert_select "input[name=?]", "baz21[foo2]"

      assert_select "input[name=?]", "baz21[foo3]"

      assert_select "input[name=?]", "baz21[foo4]"

      assert_select "textarea[name=?]", "baz21[foo5]"
    end
  end
end
