require 'rails_helper'

RSpec.describe "baz45s/edit", type: :view do
  before(:each) do
    @baz45 = assign(:baz45, Baz45.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz45 form" do
    render

    assert_select "form[action=?][method=?]", baz45_path(@baz45), "post" do

      assert_select "input[name=?]", "baz45[foo1]"

      assert_select "input[name=?]", "baz45[foo2]"

      assert_select "input[name=?]", "baz45[foo3]"

      assert_select "input[name=?]", "baz45[foo4]"

      assert_select "textarea[name=?]", "baz45[foo5]"
    end
  end
end
