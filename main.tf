resource "oci_mysql_mysql_configuration" "mysql_mysql_configurations" {
  for_each = var.mysql_mysql_configurations

  compartment_id          = each.value.compartment_id
  shape_name              = each.value.shape_name
  defined_tags            = each.value.defined_tags
  description             = each.value.description
  display_name            = each.value.display_name
  freeform_tags           = each.value.freeform_tags
  parent_configuration_id = each.value.parent_configuration_id

  dynamic "init_variables" {
    for_each = each.value.init_variables != null ? [each.value.init_variables] : []
    content {
      lower_case_table_names = init_variables.value.lower_case_table_names
    }
  }

  dynamic "options" {
    for_each = each.value.options != null ? each.value.options : []
    content {
      name  = options.value.name
      value = options.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "variables" {
    for_each = each.value.variables != null ? [each.value.variables] : []
    content {
      auto_increment_increment                    = variables.value.auto_increment_increment
      auto_increment_offset                       = variables.value.auto_increment_offset
      autocommit                                  = variables.value.autocommit
      big_tables                                  = variables.value.big_tables
      binlog_expire_logs_seconds                  = variables.value.binlog_expire_logs_seconds
      binlog_group_commit_sync_delay              = variables.value.binlog_group_commit_sync_delay
      binlog_group_commit_sync_no_delay_count     = variables.value.binlog_group_commit_sync_no_delay_count
      binlog_row_metadata                         = variables.value.binlog_row_metadata
      binlog_row_value_options                    = variables.value.binlog_row_value_options
      binlog_transaction_compression              = variables.value.binlog_transaction_compression
      block_encryption_mode                       = variables.value.block_encryption_mode
      character_set_server                        = variables.value.character_set_server
      collation_server                            = variables.value.collation_server
      completion_type                             = variables.value.completion_type
      connect_timeout                             = variables.value.connect_timeout
      connection_memory_chunk_size                = variables.value.connection_memory_chunk_size
      connection_memory_limit                     = variables.value.connection_memory_limit
      cte_max_recursion_depth                     = variables.value.cte_max_recursion_depth
      default_authentication_plugin               = variables.value.default_authentication_plugin
      explain_format                              = variables.value.explain_format
      explicit_defaults_for_timestamp             = variables.value.explicit_defaults_for_timestamp
      foreign_key_checks                          = variables.value.foreign_key_checks
      generated_random_password_length            = variables.value.generated_random_password_length
      global_connection_memory_limit              = variables.value.global_connection_memory_limit
      global_connection_memory_tracking           = variables.value.global_connection_memory_tracking
      group_concat_max_len                        = variables.value.group_concat_max_len
      group_replication_consistency               = variables.value.group_replication_consistency
      information_schema_stats_expiry             = variables.value.information_schema_stats_expiry
      innodb_adaptive_hash_index                  = variables.value.innodb_adaptive_hash_index
      innodb_autoinc_lock_mode                    = variables.value.innodb_autoinc_lock_mode
      innodb_buffer_pool_dump_pct                 = variables.value.innodb_buffer_pool_dump_pct
      innodb_buffer_pool_instances                = variables.value.innodb_buffer_pool_instances
      innodb_buffer_pool_size                     = variables.value.innodb_buffer_pool_size
      innodb_change_buffering                     = variables.value.innodb_change_buffering
      innodb_ddl_buffer_size                      = variables.value.innodb_ddl_buffer_size
      innodb_ddl_threads                          = variables.value.innodb_ddl_threads
      innodb_ft_enable_stopword                   = variables.value.innodb_ft_enable_stopword
      innodb_ft_max_token_size                    = variables.value.innodb_ft_max_token_size
      innodb_ft_min_token_size                    = variables.value.innodb_ft_min_token_size
      innodb_ft_num_word_optimize                 = variables.value.innodb_ft_num_word_optimize
      innodb_ft_result_cache_limit                = variables.value.innodb_ft_result_cache_limit
      innodb_ft_server_stopword_table             = variables.value.innodb_ft_server_stopword_table
      innodb_lock_wait_timeout                    = variables.value.innodb_lock_wait_timeout
      innodb_log_writer_threads                   = variables.value.innodb_log_writer_threads
      innodb_max_purge_lag                        = variables.value.innodb_max_purge_lag
      innodb_max_purge_lag_delay                  = variables.value.innodb_max_purge_lag_delay
      innodb_numa_interleave                      = variables.value.innodb_numa_interleave
      innodb_online_alter_log_max_size            = variables.value.innodb_online_alter_log_max_size
      innodb_redo_log_capacity                    = variables.value.innodb_redo_log_capacity
      innodb_rollback_on_timeout                  = variables.value.innodb_rollback_on_timeout
      innodb_sort_buffer_size                     = variables.value.innodb_sort_buffer_size
      innodb_stats_persistent_sample_pages        = variables.value.innodb_stats_persistent_sample_pages
      innodb_stats_transient_sample_pages         = variables.value.innodb_stats_transient_sample_pages
      innodb_strict_mode                          = variables.value.innodb_strict_mode
      innodb_undo_log_truncate                    = variables.value.innodb_undo_log_truncate
      interactive_timeout                         = variables.value.interactive_timeout
      join_buffer_size                            = variables.value.join_buffer_size
      local_infile                                = variables.value.local_infile
      long_query_time                             = variables.value.long_query_time
      mandatory_roles                             = variables.value.mandatory_roles
      max_allowed_packet                          = variables.value.max_allowed_packet
      max_binlog_cache_size                       = variables.value.max_binlog_cache_size
      max_connect_errors                          = variables.value.max_connect_errors
      max_connections                             = variables.value.max_connections
      max_execution_time                          = variables.value.max_execution_time
      max_heap_table_size                         = variables.value.max_heap_table_size
      max_prepared_stmt_count                     = variables.value.max_prepared_stmt_count
      max_seeks_for_key                           = variables.value.max_seeks_for_key
      max_user_connections                        = variables.value.max_user_connections
      mysql_firewall_mode                         = variables.value.mysql_firewall_mode
      mysql_zstd_default_compression_level        = variables.value.mysql_zstd_default_compression_level
      mysqlx_connect_timeout                      = variables.value.mysqlx_connect_timeout
      mysqlx_deflate_default_compression_level    = variables.value.mysqlx_deflate_default_compression_level
      mysqlx_deflate_max_client_compression_level = variables.value.mysqlx_deflate_max_client_compression_level
      mysqlx_document_id_unique_prefix            = variables.value.mysqlx_document_id_unique_prefix
      mysqlx_enable_hello_notice                  = variables.value.mysqlx_enable_hello_notice
      mysqlx_idle_worker_thread_timeout           = variables.value.mysqlx_idle_worker_thread_timeout
      mysqlx_interactive_timeout                  = variables.value.mysqlx_interactive_timeout
      mysqlx_lz4default_compression_level         = variables.value.mysqlx_lz4default_compression_level
      mysqlx_lz4max_client_compression_level      = variables.value.mysqlx_lz4max_client_compression_level
      mysqlx_max_allowed_packet                   = variables.value.mysqlx_max_allowed_packet
      mysqlx_min_worker_threads                   = variables.value.mysqlx_min_worker_threads
      mysqlx_read_timeout                         = variables.value.mysqlx_read_timeout
      mysqlx_wait_timeout                         = variables.value.mysqlx_wait_timeout
      mysqlx_write_timeout                        = variables.value.mysqlx_write_timeout
      mysqlx_zstd_default_compression_level       = variables.value.mysqlx_zstd_default_compression_level
      mysqlx_zstd_max_client_compression_level    = variables.value.mysqlx_zstd_max_client_compression_level
      net_read_timeout                            = variables.value.net_read_timeout
      net_write_timeout                           = variables.value.net_write_timeout
      optimizer_switch                            = variables.value.optimizer_switch
      parser_max_mem_size                         = variables.value.parser_max_mem_size
      query_alloc_block_size                      = variables.value.query_alloc_block_size
      query_prealloc_size                         = variables.value.query_prealloc_size
      range_optimizer_max_mem_size                = variables.value.range_optimizer_max_mem_size
      regexp_time_limit                           = variables.value.regexp_time_limit
      relay_log_space_limit                       = variables.value.relay_log_space_limit
      replica_net_timeout                         = variables.value.replica_net_timeout
      replica_parallel_workers                    = variables.value.replica_parallel_workers
      replica_type_conversions                    = variables.value.replica_type_conversions
      require_secure_transport                    = variables.value.require_secure_transport
      skip_name_resolve                           = variables.value.skip_name_resolve
      sort_buffer_size                            = variables.value.sort_buffer_size
      sql_generate_invisible_primary_key          = variables.value.sql_generate_invisible_primary_key
      sql_mode                                    = variables.value.sql_mode
      sql_require_primary_key                     = variables.value.sql_require_primary_key
      sql_warnings                                = variables.value.sql_warnings
      table_definition_cache                      = variables.value.table_definition_cache
      table_open_cache                            = variables.value.table_open_cache
      temptable_max_ram                           = variables.value.temptable_max_ram
      thread_pool_dedicated_listeners             = variables.value.thread_pool_dedicated_listeners
      thread_pool_max_transactions_limit          = variables.value.thread_pool_max_transactions_limit
      thread_pool_query_threads_per_group         = variables.value.thread_pool_query_threads_per_group
      thread_pool_size                            = variables.value.thread_pool_size
      thread_pool_transaction_delay               = variables.value.thread_pool_transaction_delay
      time_zone                                   = variables.value.time_zone
      tmp_table_size                              = variables.value.tmp_table_size
      transaction_isolation                       = variables.value.transaction_isolation
      wait_timeout                                = variables.value.wait_timeout
    }
  }
}

