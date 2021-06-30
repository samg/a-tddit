require 'rails_helper'

RSpec.describe "baz67s/edit", type: :view do
  before(:each) do
    @baz67 = assign(:baz67, Baz67.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz67 form" do
    render

    assert_select "form[action=?][method=?]", baz67_path(@baz67), "post" do

      assert_select "input[name=?]", "baz67[foo1]"

      assert_select "input[name=?]", "baz67[foo2]"

      assert_select "input[name=?]", "baz67[foo3]"

      assert_select "input[name=?]", "baz67[foo4]"

      assert_select "textarea[name=?]", "baz67[foo5]"
    end
  end
end
