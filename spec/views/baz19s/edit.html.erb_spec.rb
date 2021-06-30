require 'rails_helper'

RSpec.describe "baz19s/edit", type: :view do
  before(:each) do
    @baz19 = assign(:baz19, Baz19.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz19 form" do
    render

    assert_select "form[action=?][method=?]", baz19_path(@baz19), "post" do

      assert_select "input[name=?]", "baz19[foo1]"

      assert_select "input[name=?]", "baz19[foo2]"

      assert_select "input[name=?]", "baz19[foo3]"

      assert_select "input[name=?]", "baz19[foo4]"

      assert_select "textarea[name=?]", "baz19[foo5]"
    end
  end
end
