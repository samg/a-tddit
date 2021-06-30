require 'rails_helper'

RSpec.describe "baz14s/edit", type: :view do
  before(:each) do
    @baz14 = assign(:baz14, Baz14.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz14 form" do
    render

    assert_select "form[action=?][method=?]", baz14_path(@baz14), "post" do

      assert_select "input[name=?]", "baz14[foo1]"

      assert_select "input[name=?]", "baz14[foo2]"

      assert_select "input[name=?]", "baz14[foo3]"

      assert_select "input[name=?]", "baz14[foo4]"

      assert_select "textarea[name=?]", "baz14[foo5]"
    end
  end
end
