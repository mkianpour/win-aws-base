#
# Cookbook Name:: win-aws-base
# Recipe:: default
#
# Copyright (C) 2015 Mehdi
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'chocolatey'
%w(sysinternals 7zip notepadplusplus).each do |pack|
  chocolatey pack
end
