require 'rails_helper'

RSpec.describe "bar75s/edit", type: :view do
  before(:each) do
    @bar75 = assign(:bar75, Bar75.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar75 form" do
    render

    assert_select "form[action=?][method=?]", bar75_path(@bar75), "post" do

      assert_select "input[name=?]", "bar75[foo1]"

      assert_select "input[name=?]", "bar75[foo2]"

      assert_select "input[name=?]", "bar75[foo3]"

      assert_select "input[name=?]", "bar75[foo4]"

      assert_select "textarea[name=?]", "bar75[foo5]"
    end
  end
end
