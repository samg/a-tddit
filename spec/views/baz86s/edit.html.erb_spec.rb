require 'rails_helper'

RSpec.describe "baz86s/edit", type: :view do
  before(:each) do
    @baz86 = assign(:baz86, Baz86.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz86 form" do
    render

    assert_select "form[action=?][method=?]", baz86_path(@baz86), "post" do

      assert_select "input[name=?]", "baz86[foo1]"

      assert_select "input[name=?]", "baz86[foo2]"

      assert_select "input[name=?]", "baz86[foo3]"

      assert_select "input[name=?]", "baz86[foo4]"

      assert_select "textarea[name=?]", "baz86[foo5]"
    end
  end
end
