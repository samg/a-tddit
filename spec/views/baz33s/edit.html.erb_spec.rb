require 'rails_helper'

RSpec.describe "baz33s/edit", type: :view do
  before(:each) do
    @baz33 = assign(:baz33, Baz33.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz33 form" do
    render

    assert_select "form[action=?][method=?]", baz33_path(@baz33), "post" do

      assert_select "input[name=?]", "baz33[foo1]"

      assert_select "input[name=?]", "baz33[foo2]"

      assert_select "input[name=?]", "baz33[foo3]"

      assert_select "input[name=?]", "baz33[foo4]"

      assert_select "textarea[name=?]", "baz33[foo5]"
    end
  end
end
