require 'rails_helper'

RSpec.describe "bar99s/edit", type: :view do
  before(:each) do
    @bar99 = assign(:bar99, Bar99.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar99 form" do
    render

    assert_select "form[action=?][method=?]", bar99_path(@bar99), "post" do

      assert_select "input[name=?]", "bar99[foo1]"

      assert_select "input[name=?]", "bar99[foo2]"

      assert_select "input[name=?]", "bar99[foo3]"

      assert_select "input[name=?]", "bar99[foo4]"

      assert_select "textarea[name=?]", "bar99[foo5]"
    end
  end
end
