# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ua/property_contacts_multiple.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.ua.rb'

describe Whois::Record::Parser::WhoisUa, "property_contacts_multiple.expected" do

  before(:each) do
    file = fixture("responses", "whois.ua/property_contacts_multiple.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#domain" do
    it do
      @parser.domain.should == "kyivstar.ua"
    end
  end
  describe "#domain_id" do
    it do
      lambda { @parser.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_whois" do
    it do
      lambda { @parser.referral_whois }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_url" do
    it do
      lambda { @parser.referral_url }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      @parser.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("2002-09-03 00:00:00")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2010-08-11 15:34:01")
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2012-09-03 12:18:52")
    end
  end
  describe "#registrar" do
    it do
      lambda { @parser.registrar }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      lambda { @parser.registrant_contacts }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(Whois::Record::Contact)
      @parser.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].id.should            == "N/A"
      @parser.admin_contacts[0].name.should          == nil
      @parser.admin_contacts[0].organization.should  == "Kyivstar GSM"
      @parser.admin_contacts[0].address.should       == "Chervonozoryanyi Av., 51"
      @parser.admin_contacts[0].city.should          == "KYIV"
      @parser.admin_contacts[0].zip.should           == "03110"
      @parser.admin_contacts[0].state.should         == nil
      @parser.admin_contacts[0].country.should       == "UA"
      @parser.admin_contacts[0].country_code.should  == nil
      @parser.admin_contacts[0].phone.should         == "+380 (44) 2473939"
      @parser.admin_contacts[0].fax.should           == "+380 (44) 2473954"
      @parser.admin_contacts[0].email.should         == "dnsmaster@kyivstar.net"
      @parser.admin_contacts[0].created_on.should    == nil
      @parser.admin_contacts[0].updated_on.should    == Time.parse("2008-09-02 12:52:47")
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(2).items
      @parser.technical_contacts[0].should be_a(Whois::Record::Contact)
      @parser.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should            == "N/A"
      @parser.technical_contacts[0].name.should          == nil
      @parser.technical_contacts[0].organization.should  == "Kyivstar GSM"
      @parser.technical_contacts[0].address.should       == "Chervonozoryanyi Av., 51"
      @parser.technical_contacts[0].city.should          == "KYIV"
      @parser.technical_contacts[0].zip.should           == "03110"
      @parser.technical_contacts[0].state.should         == nil
      @parser.technical_contacts[0].country.should       == "UA"
      @parser.technical_contacts[0].country_code.should  == nil
      @parser.technical_contacts[0].phone.should         == "+380 (44) 2473939"
      @parser.technical_contacts[0].fax.should           == "+380 (44) 2473954"
      @parser.technical_contacts[0].email.should         == "dnsmaster@kyivstar.net"
      @parser.technical_contacts[0].created_on.should    == nil
      @parser.technical_contacts[0].updated_on.should    == Time.parse("2008-09-02 12:52:47")
      @parser.technical_contacts[1].should be_a(Whois::Record::Contact)
      @parser.technical_contacts[1].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[1].id.should            == "24361346"
      @parser.technical_contacts[1].name.should          == nil
      @parser.technical_contacts[1].organization.should  == "\"ElVisti Information Center\", LLC\nООО \"Информационный центр \"Электронные вести\"\nТОВ \"ІЦ ЕЛВІСТІ\""
      @parser.technical_contacts[1].address.should       == "а/с, 151"
      @parser.technical_contacts[1].city.should          == "КИЇВ"
      @parser.technical_contacts[1].zip.should           == "03037"
      @parser.technical_contacts[1].state.should         == nil
      @parser.technical_contacts[1].country.should       == "UA"
      @parser.technical_contacts[1].country_code.should  == nil
      @parser.technical_contacts[1].phone.should         == "+38044 239-90-91"
      @parser.technical_contacts[1].fax.should           == nil
      @parser.technical_contacts[1].email.should         == "hostmaster@visti.net"
      @parser.technical_contacts[1].created_on.should    == nil
      @parser.technical_contacts[1].updated_on.should    == Time.parse("2011-12-15 11:33:14")
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(2).items
      @parser.nameservers[0].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[0].name.should == "ns2.elvisti.kiev.ua"
      @parser.nameservers[1].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[1].name.should == "ns.kyivstar.net"
    end
  end
end