require 'rails_helper'

RSpec.describe "bar15s/edit", type: :view do
  before(:each) do
    @bar15 = assign(:bar15, Bar15.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar15 form" do
    render

    assert_select "form[action=?][method=?]", bar15_path(@bar15), "post" do

      assert_select "input[name=?]", "bar15[foo1]"

      assert_select "input[name=?]", "bar15[foo2]"

      assert_select "input[name=?]", "bar15[foo3]"

      assert_select "input[name=?]", "bar15[foo4]"

      assert_select "textarea[name=?]", "bar15[foo5]"
    end
  end
end
