require 'rails_helper'

RSpec.describe "bar1s/edit", type: :view do
  before(:each) do
    @bar1 = assign(:bar1, Bar1.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar1 form" do
    render

    assert_select "form[action=?][method=?]", bar1_path(@bar1), "post" do

      assert_select "input[name=?]", "bar1[foo1]"

      assert_select "input[name=?]", "bar1[foo2]"

      assert_select "input[name=?]", "bar1[foo3]"

      assert_select "input[name=?]", "bar1[foo4]"

      assert_select "textarea[name=?]", "bar1[foo5]"
    end
  end
end
