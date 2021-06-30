require 'rails_helper'

RSpec.describe "bar56s/edit", type: :view do
  before(:each) do
    @bar56 = assign(:bar56, Bar56.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar56 form" do
    render

    assert_select "form[action=?][method=?]", bar56_path(@bar56), "post" do

      assert_select "input[name=?]", "bar56[foo1]"

      assert_select "input[name=?]", "bar56[foo2]"

      assert_select "input[name=?]", "bar56[foo3]"

      assert_select "input[name=?]", "bar56[foo4]"

      assert_select "textarea[name=?]", "bar56[foo5]"
    end
  end
end
