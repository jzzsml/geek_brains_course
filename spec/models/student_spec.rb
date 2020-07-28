require 'rails_helper'

RSpec.describe Student, :type => :model do
  subject { described_class.new(name: "Иван", surname: "Иванов", email: "test@test.ru") }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil

    expect(subject).to_not be_valid
  end

  it "is not valid with bad name" do
    subject.name = 'Иван :)'

    expect(subject).to_not be_valid
  end

  it "is not valid with long name" do
    fake_name = ''
    31.times { |time| fake_name << 'A'}
    subject.name =  fake_name

    expect(subject).to_not be_valid
  end

  it "is not valid without a surname" do
    subject.surname = nil

    expect(subject).to_not be_valid
  end

  it "is not valid with bad surname" do
    subject.surname = 'Иван1'

    expect(subject).to_not be_valid
  end

  it "is not valid with long surname" do
    fake_surname = ''
    51.times { |time| fake_surname << 'A'}
    subject.surname = fake_surname

    expect(subject).to_not be_valid
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with bad email" do
    subject.email = "fake.email"
    expect(subject).to_not be_valid
  end
end
