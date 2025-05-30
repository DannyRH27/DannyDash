# frozen_string_literal: true

require_relative 'ini_parser'

module Aws
  class SharedCredentials

    include CredentialProvider

    # Constructs a new SharedCredentials object. This will load static
    # (access_key_id, secret_access_key and session_token) AWS access
    # credentials from an ini file, which supports profiles. The default
    # profile name is 'default'. You can specify the profile name with the
    # `ENV['AWS_PROFILE']` or with the `:profile_name` option.
    #
    # To use credentials from the default credential resolution chain
    # create a client without the credential option specified.
    # You may access the resolved credentials through
    # `client.config.credentials`.
    #
    # @option [String] :path Path to the shared file.  Defaults
    #   to "#{Dir.home}/.aws/credentials".
    #
    # @option [String] :profile_name Defaults to 'default' or
    #   `ENV['AWS_PROFILE']`.
    #
    def initialize(options = {})
      shared_config = Aws.shared_config
      @path = options[:path]
      @path ||= shared_config.credentials_path
      @profile_name = options[:profile_name]
      @profile_name ||= ENV['AWS_PROFILE']
      @profile_name ||= shared_config.profile_name
      if @path && @path == shared_config.credentials_path
        @credentials = shared_config.credentials(profile: @profile_name)
      else
        config = SharedConfig.new(
          credentials_path: @path,
          profile_name: @profile_name
        )
        @credentials = config.credentials(profile: @profile_name)
      end
      @metrics = ['CREDENTIALS_CODE']
    end

    # @return [String]
    attr_reader :path

    # @return [String]
    attr_reader :profile_name

    # @return [Credentials]
    attr_reader :credentials

    # @api private
    def inspect
      parts = [
        self.class.name,
        "profile_name=#{profile_name.inspect}",
        "path=#{path.inspect}",
      ]
      "#<#{parts.join(' ')}>"
    end

    # @deprecated This method is no longer used.
    # @return [Boolean] Returns `true` if a credential file
    #   exists and has appropriate read permissions at {#path}.
    # @note This method does not indicate if the file found at {#path}
    #   will be parsable, only if it can be read.
    def loadable?
      !path.nil? && File.exist?(path) && File.readable?(path)
    end

  end
end
