require 'rails_helper'

RSpec.describe "baz4s/edit", type: :view do
  before(:each) do
    @baz4 = assign(:baz4, Baz4.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz4 form" do
    render

    assert_select "form[action=?][method=?]", baz4_path(@baz4), "post" do

      assert_select "input[name=?]", "baz4[foo1]"

      assert_select "input[name=?]", "baz4[foo2]"

      assert_select "input[name=?]", "baz4[foo3]"

      assert_select "input[name=?]", "baz4[foo4]"

      assert_select "textarea[name=?]", "baz4[foo5]"
    end
  end
end
