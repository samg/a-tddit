require 'rails_helper'

RSpec.describe "bar25s/edit", type: :view do
  before(:each) do
    @bar25 = assign(:bar25, Bar25.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar25 form" do
    render

    assert_select "form[action=?][method=?]", bar25_path(@bar25), "post" do

      assert_select "input[name=?]", "bar25[foo1]"

      assert_select "input[name=?]", "bar25[foo2]"

      assert_select "input[name=?]", "bar25[foo3]"

      assert_select "input[name=?]", "bar25[foo4]"

      assert_select "textarea[name=?]", "bar25[foo5]"
    end
  end
end
