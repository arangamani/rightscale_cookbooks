#
# Cookbook Name:: db
#
# Copyright RightScale, Inc. All rights reserved.  All access and use subject to the
# RightScale Terms of Service available at http://www.rightscale.com/terms.php and,
# if applicable, other agreements such as a RightScale Master Subscription Agreement.

rightscale_marker :begin

db node[:db][:data_dir] do
  # See cookbooks/db_<provider>/providers/default.rb for the implementation of
  # grant_replication_slave action.
  action :grant_replication_slave
end

rightscale_marker :end
