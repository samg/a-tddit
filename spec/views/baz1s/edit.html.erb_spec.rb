require 'rails_helper'

RSpec.describe "baz1s/edit", type: :view do
  before(:each) do
    @baz1 = assign(:baz1, Baz1.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz1 form" do
    render

    assert_select "form[action=?][method=?]", baz1_path(@baz1), "post" do

      assert_select "input[name=?]", "baz1[foo1]"

      assert_select "input[name=?]", "baz1[foo2]"

      assert_select "input[name=?]", "baz1[foo3]"

      assert_select "input[name=?]", "baz1[foo4]"

      assert_select "textarea[name=?]", "baz1[foo5]"
    end
  end
end
