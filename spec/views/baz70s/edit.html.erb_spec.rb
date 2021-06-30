require 'rails_helper'

RSpec.describe "baz70s/edit", type: :view do
  before(:each) do
    @baz70 = assign(:baz70, Baz70.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz70 form" do
    render

    assert_select "form[action=?][method=?]", baz70_path(@baz70), "post" do

      assert_select "input[name=?]", "baz70[foo1]"

      assert_select "input[name=?]", "baz70[foo2]"

      assert_select "input[name=?]", "baz70[foo3]"

      assert_select "input[name=?]", "baz70[foo4]"

      assert_select "textarea[name=?]", "baz70[foo5]"
    end
  end
end
