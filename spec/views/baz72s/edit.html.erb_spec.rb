require 'rails_helper'

RSpec.describe "baz72s/edit", type: :view do
  before(:each) do
    @baz72 = assign(:baz72, Baz72.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz72 form" do
    render

    assert_select "form[action=?][method=?]", baz72_path(@baz72), "post" do

      assert_select "input[name=?]", "baz72[foo1]"

      assert_select "input[name=?]", "baz72[foo2]"

      assert_select "input[name=?]", "baz72[foo3]"

      assert_select "input[name=?]", "baz72[foo4]"

      assert_select "textarea[name=?]", "baz72[foo5]"
    end
  end
end
