require_relative "./test_helper"

module Fake
  extend self
  include Iconify::Ruby::Helper
end

describe Iconify::Ruby::Helper do
  it "should return svg string" do
    assert_equal "<svg xmlns='http://www.w3.org/2000/svg' viewBox=\"0 0 24 24\" version=\"1.1\"><path d=\"M16.293 9.293L12 13.586L7.707 9.293l-1.414 1.414L12 16.414l5.707-5.707z\" fill=\"currentColor\"/></svg>", Fake.iconify_icon("bx-chevron-down")
  end

  it "should return svg string by options" do
    assert_equal "<svg xmlns='http://www.w3.org/2000/svg' class=\"icon-class\" viewBox=\"0 0 24 24\" version=\"1.1\"><g fill=\"none\"><path d=\"M4 9l8 8l8-8\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/></g></svg>", Fake.iconify_icon("chevron-down", locate: "akar-icons", class: "icon-class")
  end
end
