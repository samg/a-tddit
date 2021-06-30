require 'rails_helper'

RSpec.describe "baz8s/edit", type: :view do
  before(:each) do
    @baz8 = assign(:baz8, Baz8.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz8 form" do
    render

    assert_select "form[action=?][method=?]", baz8_path(@baz8), "post" do

      assert_select "input[name=?]", "baz8[foo1]"

      assert_select "input[name=?]", "baz8[foo2]"

      assert_select "input[name=?]", "baz8[foo3]"

      assert_select "input[name=?]", "baz8[foo4]"

      assert_select "textarea[name=?]", "baz8[foo5]"
    end
  end
end
