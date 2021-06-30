require 'rails_helper'

RSpec.describe "baz87s/edit", type: :view do
  before(:each) do
    @baz87 = assign(:baz87, Baz87.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz87 form" do
    render

    assert_select "form[action=?][method=?]", baz87_path(@baz87), "post" do

      assert_select "input[name=?]", "baz87[foo1]"

      assert_select "input[name=?]", "baz87[foo2]"

      assert_select "input[name=?]", "baz87[foo3]"

      assert_select "input[name=?]", "baz87[foo4]"

      assert_select "textarea[name=?]", "baz87[foo5]"
    end
  end
end
