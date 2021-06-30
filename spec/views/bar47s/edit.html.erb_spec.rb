require 'rails_helper'

RSpec.describe "bar47s/edit", type: :view do
  before(:each) do
    @bar47 = assign(:bar47, Bar47.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar47 form" do
    render

    assert_select "form[action=?][method=?]", bar47_path(@bar47), "post" do

      assert_select "input[name=?]", "bar47[foo1]"

      assert_select "input[name=?]", "bar47[foo2]"

      assert_select "input[name=?]", "bar47[foo3]"

      assert_select "input[name=?]", "bar47[foo4]"

      assert_select "textarea[name=?]", "bar47[foo5]"
    end
  end
end
