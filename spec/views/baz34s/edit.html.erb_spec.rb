require 'rails_helper'

RSpec.describe "baz34s/edit", type: :view do
  before(:each) do
    @baz34 = assign(:baz34, Baz34.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz34 form" do
    render

    assert_select "form[action=?][method=?]", baz34_path(@baz34), "post" do

      assert_select "input[name=?]", "baz34[foo1]"

      assert_select "input[name=?]", "baz34[foo2]"

      assert_select "input[name=?]", "baz34[foo3]"

      assert_select "input[name=?]", "baz34[foo4]"

      assert_select "textarea[name=?]", "baz34[foo5]"
    end
  end
end
