require 'rails_helper'

RSpec.describe "baz15s/edit", type: :view do
  before(:each) do
    @baz15 = assign(:baz15, Baz15.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz15 form" do
    render

    assert_select "form[action=?][method=?]", baz15_path(@baz15), "post" do

      assert_select "input[name=?]", "baz15[foo1]"

      assert_select "input[name=?]", "baz15[foo2]"

      assert_select "input[name=?]", "baz15[foo3]"

      assert_select "input[name=?]", "baz15[foo4]"

      assert_select "textarea[name=?]", "baz15[foo5]"
    end
  end
end
