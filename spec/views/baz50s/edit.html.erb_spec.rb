require 'rails_helper'

RSpec.describe "baz50s/edit", type: :view do
  before(:each) do
    @baz50 = assign(:baz50, Baz50.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz50 form" do
    render

    assert_select "form[action=?][method=?]", baz50_path(@baz50), "post" do

      assert_select "input[name=?]", "baz50[foo1]"

      assert_select "input[name=?]", "baz50[foo2]"

      assert_select "input[name=?]", "baz50[foo3]"

      assert_select "input[name=?]", "baz50[foo4]"

      assert_select "textarea[name=?]", "baz50[foo5]"
    end
  end
end
