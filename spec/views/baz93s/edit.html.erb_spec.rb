require 'rails_helper'

RSpec.describe "baz93s/edit", type: :view do
  before(:each) do
    @baz93 = assign(:baz93, Baz93.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz93 form" do
    render

    assert_select "form[action=?][method=?]", baz93_path(@baz93), "post" do

      assert_select "input[name=?]", "baz93[foo1]"

      assert_select "input[name=?]", "baz93[foo2]"

      assert_select "input[name=?]", "baz93[foo3]"

      assert_select "input[name=?]", "baz93[foo4]"

      assert_select "textarea[name=?]", "baz93[foo5]"
    end
  end
end
