require 'rails_helper'

RSpec.describe "baz31s/edit", type: :view do
  before(:each) do
    @baz31 = assign(:baz31, Baz31.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz31 form" do
    render

    assert_select "form[action=?][method=?]", baz31_path(@baz31), "post" do

      assert_select "input[name=?]", "baz31[foo1]"

      assert_select "input[name=?]", "baz31[foo2]"

      assert_select "input[name=?]", "baz31[foo3]"

      assert_select "input[name=?]", "baz31[foo4]"

      assert_select "textarea[name=?]", "baz31[foo5]"
    end
  end
end
