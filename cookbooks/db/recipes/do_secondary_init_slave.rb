#
# Cookbook Name:: db
#
# Copyright RightScale, Inc. All rights reserved.  All access and use subject to the
# RightScale Terms of Service available at http://www.rightscale.com/terms.php and,
# if applicable, other agreements such as a RightScale Master Subscription Agreement.

rightscale_marker :begin

log "  Checking if state of database is 'uninitialized'..."
# See cookbooks/db/definitions/db_init_status.rb for the implementation of
# db_init_status definition.
db_init_status :check do
  expected_state :uninitialized
  error_message "Database already restored.  To over write existing database run do_force_reset before this recipe"
end

db_register_slave "restore from secondary" do
  # See cookbooks/db_<provider>/providers/default.rb for secondary_restore
  # action.
  action :secondary_restore
end

rightscale_marker :end
