# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DiscoveryV1
      
      # 
      class DirectoryList
        include Google::Apis::Core::Hashable
      
        # Indicate the version of the Discovery API used to generate this doc.
        # Corresponds to the JSON property `discoveryVersion`
        # @return [String]
        attr_accessor :discovery_version
      
        # The individual directory entries. One entry per api/version pair.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DiscoveryV1::DirectoryList::Item>]
        attr_accessor :items
      
        # The kind for this response.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discovery_version = args[:discovery_version] unless args[:discovery_version].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
        
        # 
        class Item
          include Google::Apis::Core::Hashable
        
          # The description of this API.
          # Corresponds to the JSON property `description`
          # @return [String]
          attr_accessor :description
        
          # A link to the discovery document.
          # Corresponds to the JSON property `discoveryLink`
          # @return [String]
          attr_accessor :discovery_link
        
          # The URL for the discovery REST document.
          # Corresponds to the JSON property `discoveryRestUrl`
          # @return [String]
          attr_accessor :discovery_rest_url
        
          # A link to human readable documentation for the API.
          # Corresponds to the JSON property `documentationLink`
          # @return [String]
          attr_accessor :documentation_link
        
          # Links to 16x16 and 32x32 icons representing the API.
          # Corresponds to the JSON property `icons`
          # @return [Google::Apis::DiscoveryV1::DirectoryList::Item::Icons]
          attr_accessor :icons
        
          # The id of this API.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # The kind for this response.
          # Corresponds to the JSON property `kind`
          # @return [String]
          attr_accessor :kind
        
          # Labels for the status of this API, such as labs or deprecated.
          # Corresponds to the JSON property `labels`
          # @return [Array<String>]
          attr_accessor :labels
        
          # The name of the API.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # True if this version is the preferred version to use.
          # Corresponds to the JSON property `preferred`
          # @return [Boolean]
          attr_accessor :preferred
          alias_method :preferred?, :preferred
        
          # The title of this API.
          # Corresponds to the JSON property `title`
          # @return [String]
          attr_accessor :title
        
          # The version of the API.
          # Corresponds to the JSON property `version`
          # @return [String]
          attr_accessor :version
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @description = args[:description] unless args[:description].nil?
            @discovery_link = args[:discovery_link] unless args[:discovery_link].nil?
            @discovery_rest_url = args[:discovery_rest_url] unless args[:discovery_rest_url].nil?
            @documentation_link = args[:documentation_link] unless args[:documentation_link].nil?
            @icons = args[:icons] unless args[:icons].nil?
            @id = args[:id] unless args[:id].nil?
            @kind = args[:kind] unless args[:kind].nil?
            @labels = args[:labels] unless args[:labels].nil?
            @name = args[:name] unless args[:name].nil?
            @preferred = args[:preferred] unless args[:preferred].nil?
            @title = args[:title] unless args[:title].nil?
            @version = args[:version] unless args[:version].nil?
          end
          
          # Links to 16x16 and 32x32 icons representing the API.
          class Icons
            include Google::Apis::Core::Hashable
          
            # The URL of the 16x16 icon.
            # Corresponds to the JSON property `x16`
            # @return [String]
            attr_accessor :x16
          
            # The URL of the 32x32 icon.
            # Corresponds to the JSON property `x32`
            # @return [String]
            attr_accessor :x32
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @x16 = args[:x16] unless args[:x16].nil?
              @x32 = args[:x32] unless args[:x32].nil?
            end
          end
        end
      end
      
      # 
      class JsonSchema
        include Google::Apis::Core::Hashable
      
        # A reference to another schema. The value of this property is the "id" of
        # another schema.
        # Corresponds to the JSON property `$ref`
        # @return [String]
        attr_accessor :_ref
      
        # If this is a schema for an object, this property is the schema for any
        # additional properties with dynamic keys on this object.
        # Corresponds to the JSON property `additionalProperties`
        # @return [Google::Apis::DiscoveryV1::JsonSchema]
        attr_accessor :additional_properties
      
        # Additional information about this property.
        # Corresponds to the JSON property `annotations`
        # @return [Google::Apis::DiscoveryV1::JsonSchema::Annotations]
        attr_accessor :annotations
      
        # The default value of this property (if one exists).
        # Corresponds to the JSON property `default`
        # @return [String]
        attr_accessor :default
      
        # A description of this object.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Values this parameter may take (if it is an enum).
        # Corresponds to the JSON property `enum`
        # @return [Array<String>]
        attr_accessor :enum
      
        # The descriptions for the enums. Each position maps to the corresponding value
        # in the "enum" array.
        # Corresponds to the JSON property `enumDescriptions`
        # @return [Array<String>]
        attr_accessor :enum_descriptions
      
        # An additional regular expression or key that helps constrain the value. For
        # more details see: http://tools.ietf.org/html/draft-zyp-json-schema-03#section-
        # 5.23
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Unique identifier for this schema.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # If this is a schema for an array, this property is the schema for each element
        # in the array.
        # Corresponds to the JSON property `items`
        # @return [Google::Apis::DiscoveryV1::JsonSchema]
        attr_accessor :items
      
        # Whether this parameter goes in the query or the path for REST requests.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The maximum value of this parameter.
        # Corresponds to the JSON property `maximum`
        # @return [String]
        attr_accessor :maximum
      
        # The minimum value of this parameter.
        # Corresponds to the JSON property `minimum`
        # @return [String]
        attr_accessor :minimum
      
        # The regular expression this parameter must conform to. Uses Java 6 regex
        # format: http://docs.oracle.com/javase/6/docs/api/java/util/regex/Pattern.html
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        # If this is a schema for an object, list the schema for each property of this
        # object.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Google::Apis::DiscoveryV1::JsonSchema>]
        attr_accessor :properties
      
        # The value is read-only, generated by the service. The value cannot be modified
        # by the client. If the value is included in a POST, PUT, or PATCH request, it
        # is ignored by the service.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        # Whether this parameter may appear multiple times.
        # Corresponds to the JSON property `repeated`
        # @return [Boolean]
        attr_accessor :repeated
        alias_method :repeated?, :repeated
      
        # Whether the parameter is required.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # The value type for this schema. A list of values can be found here: http://
        # tools.ietf.org/html/draft-zyp-json-schema-03#section-5.1
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # In a variant data type, the value of one property is used to determine how to
        # interpret the entire entity. Its value must exist in a map of descriminant
        # values to schema names.
        # Corresponds to the JSON property `variant`
        # @return [Google::Apis::DiscoveryV1::JsonSchema::Variant]
        attr_accessor :variant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @_ref = args[:_ref] unless args[:_ref].nil?
          @additional_properties = args[:additional_properties] unless args[:additional_properties].nil?
          @annotations = args[:annotations] unless args[:annotations].nil?
          @default = args[:default] unless args[:default].nil?
          @description = args[:description] unless args[:description].nil?
          @enum = args[:enum] unless args[:enum].nil?
          @enum_descriptions = args[:enum_descriptions] unless args[:enum_descriptions].nil?
          @format = args[:format] unless args[:format].nil?
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @location = args[:location] unless args[:location].nil?
          @maximum = args[:maximum] unless args[:maximum].nil?
          @minimum = args[:minimum] unless args[:minimum].nil?
          @pattern = args[:pattern] unless args[:pattern].nil?
          @properties = args[:properties] unless args[:properties].nil?
          @read_only = args[:read_only] unless args[:read_only].nil?
          @repeated = args[:repeated] unless args[:repeated].nil?
          @required = args[:required] unless args[:required].nil?
          @type = args[:type] unless args[:type].nil?
          @variant = args[:variant] unless args[:variant].nil?
        end
        
        # Additional information about this property.
        class Annotations
          include Google::Apis::Core::Hashable
        
          # A list of methods for which this property is required on requests.
          # Corresponds to the JSON property `required`
          # @return [Array<String>]
          attr_accessor :required
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @required = args[:required] unless args[:required].nil?
          end
        end
        
        # In a variant data type, the value of one property is used to determine how to
        # interpret the entire entity. Its value must exist in a map of descriminant
        # values to schema names.
        class Variant
          include Google::Apis::Core::Hashable
        
          # The name of the type discriminant property.
          # Corresponds to the JSON property `discriminant`
          # @return [String]
          attr_accessor :discriminant
        
          # The map of discriminant value to schema to use for parsing..
          # Corresponds to the JSON property `map`
          # @return [Array<Google::Apis::DiscoveryV1::JsonSchema::Variant::Map>]
          attr_accessor :map
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @discriminant = args[:discriminant] unless args[:discriminant].nil?
            @map = args[:map] unless args[:map].nil?
          end
          
          # 
          class Map
            include Google::Apis::Core::Hashable
          
            # 
            # Corresponds to the JSON property `$ref`
            # @return [String]
            attr_accessor :_ref
          
            # 
            # Corresponds to the JSON property `type_value`
            # @return [String]
            attr_accessor :type_value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @_ref = args[:_ref] unless args[:_ref].nil?
              @type_value = args[:type_value] unless args[:type_value].nil?
            end
          end
        end
      end
      
      # 
      class RestDescription
        include Google::Apis::Core::Hashable
      
        # Authentication information.
        # Corresponds to the JSON property `auth`
        # @return [Google::Apis::DiscoveryV1::RestDescription::Auth]
        attr_accessor :auth
      
        # [DEPRECATED] The base path for REST requests.
        # Corresponds to the JSON property `basePath`
        # @return [String]
        attr_accessor :base_path
      
        # [DEPRECATED] The base URL for REST requests.
        # Corresponds to the JSON property `baseUrl`
        # @return [String]
        attr_accessor :base_url
      
        # The path for REST batch requests.
        # Corresponds to the JSON property `batchPath`
        # @return [String]
        attr_accessor :batch_path
      
        # Indicates how the API name should be capitalized and split into various parts.
        # Useful for generating pretty class names.
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # The description of this API.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Indicate the version of the Discovery API used to generate this doc.
        # Corresponds to the JSON property `discoveryVersion`
        # @return [String]
        attr_accessor :discovery_version
      
        # A link to human readable documentation for the API.
        # Corresponds to the JSON property `documentationLink`
        # @return [String]
        attr_accessor :documentation_link
      
        # The ETag for this response.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Enable exponential backoff for suitable methods in the generated clients.
        # Corresponds to the JSON property `exponentialBackoffDefault`
        # @return [Boolean]
        attr_accessor :exponential_backoff_default
        alias_method :exponential_backoff_default?, :exponential_backoff_default
      
        # A list of supported features for this API.
        # Corresponds to the JSON property `features`
        # @return [Array<String>]
        attr_accessor :features
      
        # Links to 16x16 and 32x32 icons representing the API.
        # Corresponds to the JSON property `icons`
        # @return [Google::Apis::DiscoveryV1::RestDescription::Icons]
        attr_accessor :icons
      
        # The ID of this API.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The kind for this response.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Labels for the status of this API, such as labs or deprecated.
        # Corresponds to the JSON property `labels`
        # @return [Array<String>]
        attr_accessor :labels
      
        # API-level methods for this API.
        # Corresponds to the JSON property `methods`
        # @return [Hash<String,Google::Apis::DiscoveryV1::RestMethod>]
        attr_accessor :api_methods
      
        # The name of this API.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The domain of the owner of this API. Together with the ownerName and a
        # packagePath values, this can be used to generate a library for this API which
        # would have a unique fully qualified name.
        # Corresponds to the JSON property `ownerDomain`
        # @return [String]
        attr_accessor :owner_domain
      
        # The name of the owner of this API. See ownerDomain.
        # Corresponds to the JSON property `ownerName`
        # @return [String]
        attr_accessor :owner_name
      
        # The package of the owner of this API. See ownerDomain.
        # Corresponds to the JSON property `packagePath`
        # @return [String]
        attr_accessor :package_path
      
        # Common parameters that apply across all apis.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Google::Apis::DiscoveryV1::JsonSchema>]
        attr_accessor :parameters
      
        # The protocol described by this document.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # The resources in this API.
        # Corresponds to the JSON property `resources`
        # @return [Hash<String,Google::Apis::DiscoveryV1::RestResource>]
        attr_accessor :resources
      
        # The version of this API.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        # The root URL under which all API services live.
        # Corresponds to the JSON property `rootUrl`
        # @return [String]
        attr_accessor :root_url
      
        # The schemas for this API.
        # Corresponds to the JSON property `schemas`
        # @return [Hash<String,Google::Apis::DiscoveryV1::JsonSchema>]
        attr_accessor :schemas
      
        # The base path for all REST requests.
        # Corresponds to the JSON property `servicePath`
        # @return [String]
        attr_accessor :service_path
      
        # The title of this API.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The version of this API.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # 
        # Corresponds to the JSON property `version_module`
        # @return [Boolean]
        attr_accessor :version_module
        alias_method :version_module?, :version_module
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth = args[:auth] unless args[:auth].nil?
          @base_path = args[:base_path] unless args[:base_path].nil?
          @base_url = args[:base_url] unless args[:base_url].nil?
          @batch_path = args[:batch_path] unless args[:batch_path].nil?
          @canonical_name = args[:canonical_name] unless args[:canonical_name].nil?
          @description = args[:description] unless args[:description].nil?
          @discovery_version = args[:discovery_version] unless args[:discovery_version].nil?
          @documentation_link = args[:documentation_link] unless args[:documentation_link].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @exponential_backoff_default = args[:exponential_backoff_default] unless args[:exponential_backoff_default].nil?
          @features = args[:features] unless args[:features].nil?
          @icons = args[:icons] unless args[:icons].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @labels = args[:labels] unless args[:labels].nil?
          @api_methods = args[:api_methods] unless args[:api_methods].nil?
          @name = args[:name] unless args[:name].nil?
          @owner_domain = args[:owner_domain] unless args[:owner_domain].nil?
          @owner_name = args[:owner_name] unless args[:owner_name].nil?
          @package_path = args[:package_path] unless args[:package_path].nil?
          @parameters = args[:parameters] unless args[:parameters].nil?
          @protocol = args[:protocol] unless args[:protocol].nil?
          @resources = args[:resources] unless args[:resources].nil?
          @revision = args[:revision] unless args[:revision].nil?
          @root_url = args[:root_url] unless args[:root_url].nil?
          @schemas = args[:schemas] unless args[:schemas].nil?
          @service_path = args[:service_path] unless args[:service_path].nil?
          @title = args[:title] unless args[:title].nil?
          @version = args[:version] unless args[:version].nil?
          @version_module = args[:version_module] unless args[:version_module].nil?
        end
        
        # Authentication information.
        class Auth
          include Google::Apis::Core::Hashable
        
          # OAuth 2.0 authentication information.
          # Corresponds to the JSON property `oauth2`
          # @return [Google::Apis::DiscoveryV1::RestDescription::Auth::Oauth2]
          attr_accessor :oauth2
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @oauth2 = args[:oauth2] unless args[:oauth2].nil?
          end
          
          # OAuth 2.0 authentication information.
          class Oauth2
            include Google::Apis::Core::Hashable
          
            # Available OAuth 2.0 scopes.
            # Corresponds to the JSON property `scopes`
            # @return [Hash<String,Google::Apis::DiscoveryV1::RestDescription::Auth::Oauth2::Scope>]
            attr_accessor :scopes
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @scopes = args[:scopes] unless args[:scopes].nil?
            end
            
            # The scope value.
            class Scope
              include Google::Apis::Core::Hashable
            
              # Description of scope.
              # Corresponds to the JSON property `description`
              # @return [String]
              attr_accessor :description
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @description = args[:description] unless args[:description].nil?
              end
            end
          end
        end
        
        # Links to 16x16 and 32x32 icons representing the API.
        class Icons
          include Google::Apis::Core::Hashable
        
          # The URL of the 16x16 icon.
          # Corresponds to the JSON property `x16`
          # @return [String]
          attr_accessor :x16
        
          # The URL of the 32x32 icon.
          # Corresponds to the JSON property `x32`
          # @return [String]
          attr_accessor :x32
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @x16 = args[:x16] unless args[:x16].nil?
            @x32 = args[:x32] unless args[:x32].nil?
          end
        end
      end
      
      # 
      class RestMethod
        include Google::Apis::Core::Hashable
      
        # Description of this method.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Whether this method requires an ETag to be specified. The ETag is sent as an
        # HTTP If-Match or If-None-Match header.
        # Corresponds to the JSON property `etagRequired`
        # @return [Boolean]
        attr_accessor :etag_required
        alias_method :etag_required?, :etag_required
      
        # HTTP method used by this method.
        # Corresponds to the JSON property `httpMethod`
        # @return [String]
        attr_accessor :http_method
      
        # A unique ID for this method. This property can be used to match methods
        # between different versions of Discovery.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Media upload parameters.
        # Corresponds to the JSON property `mediaUpload`
        # @return [Google::Apis::DiscoveryV1::RestMethod::MediaUpload]
        attr_accessor :media_upload
      
        # Ordered list of required parameters, serves as a hint to clients on how to
        # structure their method signatures. The array is ordered such that the "most-
        # significant" parameter appears first.
        # Corresponds to the JSON property `parameterOrder`
        # @return [Array<String>]
        attr_accessor :parameter_order
      
        # Details for all parameters in this method.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Google::Apis::DiscoveryV1::JsonSchema>]
        attr_accessor :parameters
      
        # The URI path of this REST method. Should be used in conjunction with the
        # basePath property at the api-level.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # The schema for the request.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::DiscoveryV1::RestMethod::Request]
        attr_accessor :request
      
        # The schema for the response.
        # Corresponds to the JSON property `response`
        # @return [Google::Apis::DiscoveryV1::RestMethod::Response]
        attr_accessor :response
      
        # OAuth 2.0 scopes applicable to this method.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Whether this method supports media downloads.
        # Corresponds to the JSON property `supportsMediaDownload`
        # @return [Boolean]
        attr_accessor :supports_media_download
        alias_method :supports_media_download?, :supports_media_download
      
        # Whether this method supports media uploads.
        # Corresponds to the JSON property `supportsMediaUpload`
        # @return [Boolean]
        attr_accessor :supports_media_upload
        alias_method :supports_media_upload?, :supports_media_upload
      
        # Whether this method supports subscriptions.
        # Corresponds to the JSON property `supportsSubscription`
        # @return [Boolean]
        attr_accessor :supports_subscription
        alias_method :supports_subscription?, :supports_subscription
      
        # Indicates that downloads from this method should use the download service URL (
        # i.e. "/download"). Only applies if the method supports media download.
        # Corresponds to the JSON property `useMediaDownloadService`
        # @return [Boolean]
        attr_accessor :use_media_download_service
        alias_method :use_media_download_service?, :use_media_download_service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] unless args[:description].nil?
          @etag_required = args[:etag_required] unless args[:etag_required].nil?
          @http_method = args[:http_method] unless args[:http_method].nil?
          @id = args[:id] unless args[:id].nil?
          @media_upload = args[:media_upload] unless args[:media_upload].nil?
          @parameter_order = args[:parameter_order] unless args[:parameter_order].nil?
          @parameters = args[:parameters] unless args[:parameters].nil?
          @path = args[:path] unless args[:path].nil?
          @request = args[:request] unless args[:request].nil?
          @response = args[:response] unless args[:response].nil?
          @scopes = args[:scopes] unless args[:scopes].nil?
          @supports_media_download = args[:supports_media_download] unless args[:supports_media_download].nil?
          @supports_media_upload = args[:supports_media_upload] unless args[:supports_media_upload].nil?
          @supports_subscription = args[:supports_subscription] unless args[:supports_subscription].nil?
          @use_media_download_service = args[:use_media_download_service] unless args[:use_media_download_service].nil?
        end
        
        # Media upload parameters.
        class MediaUpload
          include Google::Apis::Core::Hashable
        
          # MIME Media Ranges for acceptable media uploads to this method.
          # Corresponds to the JSON property `accept`
          # @return [Array<String>]
          attr_accessor :accept
        
          # Maximum size of a media upload, such as "1MB", "2GB" or "3TB".
          # Corresponds to the JSON property `maxSize`
          # @return [String]
          attr_accessor :max_size
        
          # Supported upload protocols.
          # Corresponds to the JSON property `protocols`
          # @return [Google::Apis::DiscoveryV1::RestMethod::MediaUpload::Protocols]
          attr_accessor :protocols
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @accept = args[:accept] unless args[:accept].nil?
            @max_size = args[:max_size] unless args[:max_size].nil?
            @protocols = args[:protocols] unless args[:protocols].nil?
          end
          
          # Supported upload protocols.
          class Protocols
            include Google::Apis::Core::Hashable
          
            # Supports the Resumable Media Upload protocol.
            # Corresponds to the JSON property `resumable`
            # @return [Google::Apis::DiscoveryV1::RestMethod::MediaUpload::Protocols::Resumable]
            attr_accessor :resumable
          
            # Supports uploading as a single HTTP request.
            # Corresponds to the JSON property `simple`
            # @return [Google::Apis::DiscoveryV1::RestMethod::MediaUpload::Protocols::Simple]
            attr_accessor :simple
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @resumable = args[:resumable] unless args[:resumable].nil?
              @simple = args[:simple] unless args[:simple].nil?
            end
            
            # Supports the Resumable Media Upload protocol.
            class Resumable
              include Google::Apis::Core::Hashable
            
              # True if this endpoint supports uploading multipart media.
              # Corresponds to the JSON property `multipart`
              # @return [Boolean]
              attr_accessor :multipart
              alias_method :multipart?, :multipart
            
              # The URI path to be used for upload. Should be used in conjunction with the
              # basePath property at the api-level.
              # Corresponds to the JSON property `path`
              # @return [String]
              attr_accessor :path
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @multipart = args[:multipart] unless args[:multipart].nil?
                @path = args[:path] unless args[:path].nil?
              end
            end
            
            # Supports uploading as a single HTTP request.
            class Simple
              include Google::Apis::Core::Hashable
            
              # True if this endpoint supports upload multipart media.
              # Corresponds to the JSON property `multipart`
              # @return [Boolean]
              attr_accessor :multipart
              alias_method :multipart?, :multipart
            
              # The URI path to be used for upload. Should be used in conjunction with the
              # basePath property at the api-level.
              # Corresponds to the JSON property `path`
              # @return [String]
              attr_accessor :path
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @multipart = args[:multipart] unless args[:multipart].nil?
                @path = args[:path] unless args[:path].nil?
              end
            end
          end
        end
        
        # The schema for the request.
        class Request
          include Google::Apis::Core::Hashable
        
          # Schema ID for the request schema.
          # Corresponds to the JSON property `$ref`
          # @return [String]
          attr_accessor :_ref
        
          # parameter name.
          # Corresponds to the JSON property `parameterName`
          # @return [String]
          attr_accessor :parameter_name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @_ref = args[:_ref] unless args[:_ref].nil?
            @parameter_name = args[:parameter_name] unless args[:parameter_name].nil?
          end
        end
        
        # The schema for the response.
        class Response
          include Google::Apis::Core::Hashable
        
          # Schema ID for the response schema.
          # Corresponds to the JSON property `$ref`
          # @return [String]
          attr_accessor :_ref
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @_ref = args[:_ref] unless args[:_ref].nil?
          end
        end
      end
      
      # 
      class RestResource
        include Google::Apis::Core::Hashable
      
        # Methods on this resource.
        # Corresponds to the JSON property `methods`
        # @return [Hash<String,Google::Apis::DiscoveryV1::RestMethod>]
        attr_accessor :api_methods
      
        # Sub-resources on this resource.
        # Corresponds to the JSON property `resources`
        # @return [Hash<String,Google::Apis::DiscoveryV1::RestResource>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_methods = args[:api_methods] unless args[:api_methods].nil?
          @resources = args[:resources] unless args[:resources].nil?
        end
      end
    end
  end
end
