require 'spec_helper'

describe WebSpace do
  describe "attributes" do
    it { should respond_to :name }
    it { should respond_to :content }
  end

  describe "associations" do
    it { should respond_to :teacher }
    it { should respond_to :pages }
  end

  describe "validations" do
    it "name cannot be blank" do
      subject.name = ''
      subject.should_not be_valid
    end

    it "description cannot be blank" do
      subject.content = ''
      subject.should_not be_valid
    end
  end

  describe "methods" do
    it ".create_default_page" do
      webspace = WebSpace.create(:name => "Test", :content => "Test")
      webspace.pages.count == 1
      webspace.pages.first.name == "Index"
    end
  end
end
