require 'rails_helper'

RSpec.describe "baz26s/edit", type: :view do
  before(:each) do
    @baz26 = assign(:baz26, Baz26.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz26 form" do
    render

    assert_select "form[action=?][method=?]", baz26_path(@baz26), "post" do

      assert_select "input[name=?]", "baz26[foo1]"

      assert_select "input[name=?]", "baz26[foo2]"

      assert_select "input[name=?]", "baz26[foo3]"

      assert_select "input[name=?]", "baz26[foo4]"

      assert_select "textarea[name=?]", "baz26[foo5]"
    end
  end
end
