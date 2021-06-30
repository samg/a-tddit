require 'rails_helper'

RSpec.describe "baz16s/edit", type: :view do
  before(:each) do
    @baz16 = assign(:baz16, Baz16.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz16 form" do
    render

    assert_select "form[action=?][method=?]", baz16_path(@baz16), "post" do

      assert_select "input[name=?]", "baz16[foo1]"

      assert_select "input[name=?]", "baz16[foo2]"

      assert_select "input[name=?]", "baz16[foo3]"

      assert_select "input[name=?]", "baz16[foo4]"

      assert_select "textarea[name=?]", "baz16[foo5]"
    end
  end
end
