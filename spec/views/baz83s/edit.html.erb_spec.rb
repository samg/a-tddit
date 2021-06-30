require 'rails_helper'

RSpec.describe "baz83s/edit", type: :view do
  before(:each) do
    @baz83 = assign(:baz83, Baz83.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz83 form" do
    render

    assert_select "form[action=?][method=?]", baz83_path(@baz83), "post" do

      assert_select "input[name=?]", "baz83[foo1]"

      assert_select "input[name=?]", "baz83[foo2]"

      assert_select "input[name=?]", "baz83[foo3]"

      assert_select "input[name=?]", "baz83[foo4]"

      assert_select "textarea[name=?]", "baz83[foo5]"
    end
  end
end
