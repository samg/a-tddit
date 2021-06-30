require 'rails_helper'

RSpec.describe "bar5s/edit", type: :view do
  before(:each) do
    @bar5 = assign(:bar5, Bar5.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar5 form" do
    render

    assert_select "form[action=?][method=?]", bar5_path(@bar5), "post" do

      assert_select "input[name=?]", "bar5[foo1]"

      assert_select "input[name=?]", "bar5[foo2]"

      assert_select "input[name=?]", "bar5[foo3]"

      assert_select "input[name=?]", "bar5[foo4]"

      assert_select "textarea[name=?]", "bar5[foo5]"
    end
  end
end
