require 'rails_helper'

RSpec.describe "baz36s/edit", type: :view do
  before(:each) do
    @baz36 = assign(:baz36, Baz36.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz36 form" do
    render

    assert_select "form[action=?][method=?]", baz36_path(@baz36), "post" do

      assert_select "input[name=?]", "baz36[foo1]"

      assert_select "input[name=?]", "baz36[foo2]"

      assert_select "input[name=?]", "baz36[foo3]"

      assert_select "input[name=?]", "baz36[foo4]"

      assert_select "textarea[name=?]", "baz36[foo5]"
    end
  end
end
