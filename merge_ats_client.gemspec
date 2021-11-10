# -*- encoding: utf-8 -*-

=begin
#Merge ATS API

#The unified API for building rich integrations with multiple Applicant Tracking System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

$:.push File.expand_path("../lib", __FILE__)
require "merge_ats_client/version"

Gem::Specification.new do |s|
  s.name        = "merge_ats_client"
  s.version     = MergeATSClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["OpenAPI-Generator"]
  s.email       = ["hello@merge.dev"]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "Merge ATS API Ruby Gem"
  s.description = "The unified API for building rich integrations with multiple Applicant Tracking System platforms."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
