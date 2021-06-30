require 'rails_helper'

RSpec.describe "baz100s/edit", type: :view do
  before(:each) do
    @baz100 = assign(:baz100, Baz100.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz100 form" do
    render

    assert_select "form[action=?][method=?]", baz100_path(@baz100), "post" do

      assert_select "input[name=?]", "baz100[foo1]"

      assert_select "input[name=?]", "baz100[foo2]"

      assert_select "input[name=?]", "baz100[foo3]"

      assert_select "input[name=?]", "baz100[foo4]"

      assert_select "textarea[name=?]", "baz100[foo5]"
    end
  end
end
