require 'rails_helper'

RSpec.describe "baz51s/edit", type: :view do
  before(:each) do
    @baz51 = assign(:baz51, Baz51.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz51 form" do
    render

    assert_select "form[action=?][method=?]", baz51_path(@baz51), "post" do

      assert_select "input[name=?]", "baz51[foo1]"

      assert_select "input[name=?]", "baz51[foo2]"

      assert_select "input[name=?]", "baz51[foo3]"

      assert_select "input[name=?]", "baz51[foo4]"

      assert_select "textarea[name=?]", "baz51[foo5]"
    end
  end
end
