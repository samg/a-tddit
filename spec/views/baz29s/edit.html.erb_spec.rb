require 'rails_helper'

RSpec.describe "baz29s/edit", type: :view do
  before(:each) do
    @baz29 = assign(:baz29, Baz29.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz29 form" do
    render

    assert_select "form[action=?][method=?]", baz29_path(@baz29), "post" do

      assert_select "input[name=?]", "baz29[foo1]"

      assert_select "input[name=?]", "baz29[foo2]"

      assert_select "input[name=?]", "baz29[foo3]"

      assert_select "input[name=?]", "baz29[foo4]"

      assert_select "textarea[name=?]", "baz29[foo5]"
    end
  end
end
