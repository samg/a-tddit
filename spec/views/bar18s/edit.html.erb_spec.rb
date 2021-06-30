require 'rails_helper'

RSpec.describe "bar18s/edit", type: :view do
  before(:each) do
    @bar18 = assign(:bar18, Bar18.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar18 form" do
    render

    assert_select "form[action=?][method=?]", bar18_path(@bar18), "post" do

      assert_select "input[name=?]", "bar18[foo1]"

      assert_select "input[name=?]", "bar18[foo2]"

      assert_select "input[name=?]", "bar18[foo3]"

      assert_select "input[name=?]", "bar18[foo4]"

      assert_select "textarea[name=?]", "bar18[foo5]"
    end
  end
end
