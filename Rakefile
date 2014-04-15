# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")

require 'motion/project/template/ios'
require 'rubygems'
require 'motion-cocoapods'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'GateOpener'
  app.interface_orientations = [:portrait]
  app.info_plist['UIViewControllerBasedStatusBarAppearance'] = false
  app.codesign_certificate = ENV["ios_dev_certificate"]

  app.pods do
    pod 'FlatUIKit'
  end
end
