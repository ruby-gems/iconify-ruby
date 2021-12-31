require_relative "./test_helper"

describe Iconify::Ruby do
  it "read collections json" do
    assert_equal Hash, Iconify::Ruby.collections.class
  end

  it "read locate icon by name" do
    assert_equal Hash, Iconify::Ruby.locate("fa").class
  end

  it "should not read locate icon by error name" do
    assert Iconify::Ruby.locate("fass")[:error]
  end

  it "should get icon from locate" do
    locale = Iconify::Ruby.locate("bx")
    icon_body = locale["icons"]["bx-abacus"]["body"]
    body = "<path d=\"M2 3h2v18H2zm18 0h2v18h-2zM5 13h2v1h2v-1h2v1h2v-1h4v1h2v-4h-2v1h-4v-1h-2v1H9v-1H7v1H5zm0-9v4h2V7h8v1h2V7h2V5h-2V4h-2v1H7V4zm0 13v3h2v-1h2v1h2v-1h8v-2h-8v-1H9v1H7v-1H5z\" fill=\"currentColor\"/>"
    assert_equal body, icon_body
  end
end
