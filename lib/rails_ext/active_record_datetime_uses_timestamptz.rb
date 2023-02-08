# frozen_string_literal: true

#
# active_record_datetime_uses_timestamptz.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#

require 'active_record/connection_adapters/postgresql_adapter'
ActiveRecord::ConnectionAdapters::PostgreSQLAdapter::
  NATIVE_DATABASE_TYPES[:datetime] = {
    name: 'timestamptz'
  }
