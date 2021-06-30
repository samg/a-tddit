require 'rails_helper'

RSpec.describe "baz32s/edit", type: :view do
  before(:each) do
    @baz32 = assign(:baz32, Baz32.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz32 form" do
    render

    assert_select "form[action=?][method=?]", baz32_path(@baz32), "post" do

      assert_select "input[name=?]", "baz32[foo1]"

      assert_select "input[name=?]", "baz32[foo2]"

      assert_select "input[name=?]", "baz32[foo3]"

      assert_select "input[name=?]", "baz32[foo4]"

      assert_select "textarea[name=?]", "baz32[foo5]"
    end
  end
end
