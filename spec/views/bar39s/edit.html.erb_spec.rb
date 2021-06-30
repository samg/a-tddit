require 'rails_helper'

RSpec.describe "bar39s/edit", type: :view do
  before(:each) do
    @bar39 = assign(:bar39, Bar39.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar39 form" do
    render

    assert_select "form[action=?][method=?]", bar39_path(@bar39), "post" do

      assert_select "input[name=?]", "bar39[foo1]"

      assert_select "input[name=?]", "bar39[foo2]"

      assert_select "input[name=?]", "bar39[foo3]"

      assert_select "input[name=?]", "bar39[foo4]"

      assert_select "textarea[name=?]", "bar39[foo5]"
    end
  end
end
