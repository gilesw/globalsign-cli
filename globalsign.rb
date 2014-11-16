#!/usr/bin/env ruby
# https://github.com/tj/commander
# https://www.globalsign.com/resources/documentation/globalsign-ssl-api-user-guide-v4.3.4.pdf

require 'savon'

# create a client for the service
ga_ssl = Savon.client(wsdl: 'https://system.globalsign.com/kb/ws/v1/ServerSSLService?wsdl')
ga_service = Savon.client(wsdl: 'https://system.globalsign.com/kb/ws/v1/GASService?wsdl')
ga_account = Savon.client(wsdl: 'https://system.globalsign.com/kb/ws/v1/AccountService?wsdl')

puts ga_ssl.operations
puts ga_service.operations
puts ga_account.operations

