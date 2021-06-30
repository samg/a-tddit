require 'rails_helper'

RSpec.describe "baz54s/edit", type: :view do
  before(:each) do
    @baz54 = assign(:baz54, Baz54.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz54 form" do
    render

    assert_select "form[action=?][method=?]", baz54_path(@baz54), "post" do

      assert_select "input[name=?]", "baz54[foo1]"

      assert_select "input[name=?]", "baz54[foo2]"

      assert_select "input[name=?]", "baz54[foo3]"

      assert_select "input[name=?]", "baz54[foo4]"

      assert_select "textarea[name=?]", "baz54[foo5]"
    end
  end
end
