require 'vertx-mysql-postgresql/async_sql_client'
require 'vertx/util/utils.rb'
# Generated from io.vertx.ext.asyncsql.PostgreSQLClient
module VertxMysqlPostgresql
  # 
  #  Represents an PostgreSQL client
  class PostgreSQLClient < ::VertxMysqlPostgresql::AsyncSQLClient
    # @private
    # @param j_del [::VertxMysqlPostgresql::PostgreSQLClient] the java delegate
    def initialize(j_del)
      super(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::VertxMysqlPostgresql::PostgreSQLClient] the underlying java delegate
    def j_del
      @j_del
    end
    #  Create a PostgreSQL client which maintains its own pool.
    # @param [::Vertx::Vertx] vertx the Vert.x instance
    # @param [Hash{String => Object}] config the configuration
    # @return [::VertxMysqlPostgresql::AsyncSQLClient] the client
    def self.create_non_shared(vertx=nil,config=nil)
      if vertx.class.method_defined?(:j_del) && config.class == Hash && !block_given?
        return ::VertxMysqlPostgresql::AsyncSQLClient.new(Java::IoVertxExtAsyncsql::PostgreSQLClient.java_method(:createNonShared, [Java::IoVertxCore::Vertx.java_class,Java::IoVertxCoreJson::JsonObject.java_class]).call(vertx.j_del,::Vertx::Util::Utils.to_json_object(config)))
      end
      raise ArgumentError, "Invalid arguments when calling create_non_shared(vertx,config)"
    end
    #  Create a PostgreSQL client which shares its pool with any other MySQL clients created with the same
    #  pool name
    # @param [::Vertx::Vertx] vertx the Vert.x instance
    # @param [Hash{String => Object}] config the configuration
    # @param [String] poolName the pool name
    # @return [::VertxMysqlPostgresql::AsyncSQLClient] the client
    def self.create_shared(vertx=nil,config=nil,poolName=nil)
      if vertx.class.method_defined?(:j_del) && config.class == Hash && !block_given? && poolName == nil
        return ::VertxMysqlPostgresql::AsyncSQLClient.new(Java::IoVertxExtAsyncsql::PostgreSQLClient.java_method(:createShared, [Java::IoVertxCore::Vertx.java_class,Java::IoVertxCoreJson::JsonObject.java_class]).call(vertx.j_del,::Vertx::Util::Utils.to_json_object(config)))
      elsif vertx.class.method_defined?(:j_del) && config.class == Hash && poolName.class == String && !block_given?
        return ::VertxMysqlPostgresql::AsyncSQLClient.new(Java::IoVertxExtAsyncsql::PostgreSQLClient.java_method(:createShared, [Java::IoVertxCore::Vertx.java_class,Java::IoVertxCoreJson::JsonObject.java_class,Java::java.lang.String.java_class]).call(vertx.j_del,::Vertx::Util::Utils.to_json_object(config),poolName))
      end
      raise ArgumentError, "Invalid arguments when calling create_shared(vertx,config,poolName)"
    end
  end
end
