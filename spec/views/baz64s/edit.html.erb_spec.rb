require 'rails_helper'

RSpec.describe "baz64s/edit", type: :view do
  before(:each) do
    @baz64 = assign(:baz64, Baz64.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz64 form" do
    render

    assert_select "form[action=?][method=?]", baz64_path(@baz64), "post" do

      assert_select "input[name=?]", "baz64[foo1]"

      assert_select "input[name=?]", "baz64[foo2]"

      assert_select "input[name=?]", "baz64[foo3]"

      assert_select "input[name=?]", "baz64[foo4]"

      assert_select "textarea[name=?]", "baz64[foo5]"
    end
  end
end
