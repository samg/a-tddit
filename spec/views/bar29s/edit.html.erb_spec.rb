require 'rails_helper'

RSpec.describe "bar29s/edit", type: :view do
  before(:each) do
    @bar29 = assign(:bar29, Bar29.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar29 form" do
    render

    assert_select "form[action=?][method=?]", bar29_path(@bar29), "post" do

      assert_select "input[name=?]", "bar29[foo1]"

      assert_select "input[name=?]", "bar29[foo2]"

      assert_select "input[name=?]", "bar29[foo3]"

      assert_select "input[name=?]", "bar29[foo4]"

      assert_select "textarea[name=?]", "bar29[foo5]"
    end
  end
end
