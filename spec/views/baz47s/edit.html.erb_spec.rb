require 'rails_helper'

RSpec.describe "baz47s/edit", type: :view do
  before(:each) do
    @baz47 = assign(:baz47, Baz47.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz47 form" do
    render

    assert_select "form[action=?][method=?]", baz47_path(@baz47), "post" do

      assert_select "input[name=?]", "baz47[foo1]"

      assert_select "input[name=?]", "baz47[foo2]"

      assert_select "input[name=?]", "baz47[foo3]"

      assert_select "input[name=?]", "baz47[foo4]"

      assert_select "textarea[name=?]", "baz47[foo5]"
    end
  end
end
