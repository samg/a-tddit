require 'rails_helper'

RSpec.describe "baz6s/edit", type: :view do
  before(:each) do
    @baz6 = assign(:baz6, Baz6.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz6 form" do
    render

    assert_select "form[action=?][method=?]", baz6_path(@baz6), "post" do

      assert_select "input[name=?]", "baz6[foo1]"

      assert_select "input[name=?]", "baz6[foo2]"

      assert_select "input[name=?]", "baz6[foo3]"

      assert_select "input[name=?]", "baz6[foo4]"

      assert_select "textarea[name=?]", "baz6[foo5]"
    end
  end
end
