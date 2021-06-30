require 'rails_helper'

RSpec.describe "baz2s/edit", type: :view do
  before(:each) do
    @baz2 = assign(:baz2, Baz2.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz2 form" do
    render

    assert_select "form[action=?][method=?]", baz2_path(@baz2), "post" do

      assert_select "input[name=?]", "baz2[foo1]"

      assert_select "input[name=?]", "baz2[foo2]"

      assert_select "input[name=?]", "baz2[foo3]"

      assert_select "input[name=?]", "baz2[foo4]"

      assert_select "textarea[name=?]", "baz2[foo5]"
    end
  end
end
