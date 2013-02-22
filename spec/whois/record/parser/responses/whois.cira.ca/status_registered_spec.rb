# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.cira.ca/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.cira.ca.rb'

describe Whois::Record::Parser::WhoisCiraCa, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.cira.ca/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      subject.disclaimer.should == "Use of CIRA's WHOIS service is governed by the Terms of Use in its Legal\nNotice, available at http://www.cira.ca/legal-notice/?lang=en\n\n(c) 2013 Canadian Internet Registration Authority, (http://www.cira.ca/)"
    end
  end
  describe "#domain" do
    it do
      subject.domain.should == "google.ca"
    end
  end
  describe "#domain_id" do
    it do
      lambda { subject.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      subject.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      subject.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      subject.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      subject.created_on.should be_a(Time)
      subject.created_on.should == Time.parse("2000-10-03 00:00:00")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2012-03-27 00:00:00")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2013-04-28 00:00:00")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == "70"
      subject.registrar.name.should         == "Webnames.ca Inc."
      subject.registrar.organization.should == "Webnames.ca Inc."
      subject.registrar.url.should          == nil
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should           == nil
      subject.registrant_contacts[0].name.should         == "Google Inc."
      subject.registrant_contacts[0].organization.should == nil
      subject.registrant_contacts[0].address.should      == nil
      subject.registrant_contacts[0].city.should         == nil
      subject.registrant_contacts[0].zip.should          == nil
      subject.registrant_contacts[0].state.should        == nil
      subject.registrant_contacts[0].country_code.should == nil
      subject.registrant_contacts[0].phone.should        == nil
      subject.registrant_contacts[0].fax.should          == nil
      subject.registrant_contacts[0].email.should        == nil
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMIN
      subject.admin_contacts[0].id.should           == nil
      subject.admin_contacts[0].name.should         == "Christina Chiou"
      subject.admin_contacts[0].organization.should == nil
      subject.admin_contacts[0].address.should      == "130 King St. W., Suite 1800,\nToronto ON M5X1E3 Canada"
      subject.admin_contacts[0].city.should         == nil
      subject.admin_contacts[0].zip.should          == nil
      subject.admin_contacts[0].state.should        == nil
      subject.admin_contacts[0].country_code.should == nil
      subject.admin_contacts[0].phone.should        == "+1.4168653361x"
      subject.admin_contacts[0].fax.should          == "+1.4169456616"
      subject.admin_contacts[0].email.should        == "dns-admin@google.com"
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should           == nil
      subject.technical_contacts[0].name.should         == "Matt Serlin"
      subject.technical_contacts[0].organization.should == nil
      subject.technical_contacts[0].address.should      == "Domain Provisioning,10400 Overland Rd. PMB 155\nBoise ID 83709 United States"
      subject.technical_contacts[0].city.should         == nil
      subject.technical_contacts[0].zip.should          == nil
      subject.technical_contacts[0].state.should        == nil
      subject.technical_contacts[0].country_code.should == nil
      subject.technical_contacts[0].phone.should        == "+1.2083895740x"
      subject.technical_contacts[0].fax.should          == "+1.2083895771"
      subject.technical_contacts[0].email.should        == "ccops@markmonitor.com"
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(4).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns1.google.com"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns2.google.com"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "ns3.google.com"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "ns4.google.com"
    end
  end
  describe "#valid?" do
    it do
      subject.valid?.should == true
    end
  end
  describe "#invalid?" do
    it do
      subject.invalid?.should == false
    end
  end
end
