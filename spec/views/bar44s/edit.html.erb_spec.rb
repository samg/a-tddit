require 'rails_helper'

RSpec.describe "bar44s/edit", type: :view do
  before(:each) do
    @bar44 = assign(:bar44, Bar44.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar44 form" do
    render

    assert_select "form[action=?][method=?]", bar44_path(@bar44), "post" do

      assert_select "input[name=?]", "bar44[foo1]"

      assert_select "input[name=?]", "bar44[foo2]"

      assert_select "input[name=?]", "bar44[foo3]"

      assert_select "input[name=?]", "bar44[foo4]"

      assert_select "textarea[name=?]", "bar44[foo5]"
    end
  end
end
