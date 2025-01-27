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
    module ScriptV1
      
      # A request to run the function in a script. The script is identified by the
      # specified `script_id`. Executing a function on a script will return results
      # based on the implementation of the script.
      class ExecutionRequest
        include Google::Apis::Core::Hashable
      
        # The name of the function to execute in the given script. The name does not
        # include parentheses or parameters.
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # The parameters to be passed to the function being executed. The type for each
        # parameter should match the expected type in Apps Script. Parameters cannot be
        # Apps Script-specific objects (such as a `Document` or `Calendar`); they can
        # only be primitive types such as a `string`, `number`, `array`, `object`, or `
        # boolean`. Optional.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Object>]
        attr_accessor :parameters
      
        # This field is not used.
        # Corresponds to the JSON property `sessionState`
        # @return [String]
        attr_accessor :session_state
      
        # If `true` and the user is an owner of the script, the script runs at the most
        # recently saved version rather than the version deployed for use with the
        # Execution API. Optional; default is `false`.
        # Corresponds to the JSON property `devMode`
        # @return [Boolean]
        attr_accessor :dev_mode
        alias_method :dev_mode?, :dev_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function = args[:function] unless args[:function].nil?
          @parameters = args[:parameters] unless args[:parameters].nil?
          @session_state = args[:session_state] unless args[:session_state].nil?
          @dev_mode = args[:dev_mode] unless args[:dev_mode].nil?
        end
      end
      
      # The response will not arrive until the function finishes executing. The
      # maximum runtime is listed in the guide to [limitations in Apps Script](https://
      # developers.google.com/apps-script/guides/services/quotas#current_limitations).
      # If the script function returns successfully, the `response` field will contain
      # an `ExecutionResponse` object with the function's return value in the object's
      # `result` field.
      # If the script function (or Apps Script itself) throws an exception, the `error`
      # field will contain a `Status` object. The `Status` object's `details` field
      # will contain an array with a single `ExecutionError` object that provides
      # information about the nature of the error.
      # If the `run` call itself fails (for example, because of a malformed request or
      # an authorization error), the method will return an HTTP response code in the
      # 4XX range with a different format for the response body. Client libraries will
      # automatically convert a 4XX response into an exception class.
      class Operation
        include Google::Apis::Core::Hashable
      
        # This field is not used.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # This field is not used.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # This field is not used.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # If a `run` call succeeds but the script function (or Apps Script itself)
        # throws an exception, the response body's `error` field will contain this `
        # Status` object.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ScriptV1::Status]
        attr_accessor :error
      
        # If the script function returns successfully, this field will contain an `
        # ExecutionResponse` object with the function's return value as the object's `
        # result` field.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @metadata = args[:metadata] unless args[:metadata].nil?
          @done = args[:done] unless args[:done].nil?
          @error = args[:error] unless args[:error].nil?
          @response = args[:response] unless args[:response].nil?
        end
      end
      
      # If a `run` call succeeds but the script function (or Apps Script itself)
      # throws an exception, the response body's `error` field will contain this `
      # Status` object.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # An array that contains a single `ExecutionError` object that provides
        # information about the nature of the error.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] unless args[:code].nil?
          @message = args[:message] unless args[:message].nil?
          @details = args[:details] unless args[:details].nil?
        end
      end
      
      # An object that provides information about the nature of an error in the Apps
      # Script Execution API. If an `run` call succeeds but the script function (or
      # Apps Script itself) throws an exception, the response body's `error` field
      # will contain a `Status` object. The `Status` object's `details` field will
      # contain an array with a single one of these `ExecutionError` objects.
      class ExecutionError
        include Google::Apis::Core::Hashable
      
        # An array of objects that provide a stack trace through the script to show
        # where the execution failed, with the deepest call first.
        # Corresponds to the JSON property `scriptStackTraceElements`
        # @return [Array<Google::Apis::ScriptV1::ScriptStackTraceElement>]
        attr_accessor :script_stack_trace_elements
      
        # The error message thrown by Apps Script, usually localized into the user's
        # language.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # The error type, for example `TypeError` or `ReferenceError`. If the error type
        # is unavailable, this field is not included.
        # Corresponds to the JSON property `errorType`
        # @return [String]
        attr_accessor :error_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @script_stack_trace_elements = args[:script_stack_trace_elements] unless args[:script_stack_trace_elements].nil?
          @error_message = args[:error_message] unless args[:error_message].nil?
          @error_type = args[:error_type] unless args[:error_type].nil?
        end
      end
      
      # A stack trace through the script that shows where the execution failed.
      class ScriptStackTraceElement
        include Google::Apis::Core::Hashable
      
        # The name of the function that failed.
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # The line number where the script failed.
        # Corresponds to the JSON property `lineNumber`
        # @return [Fixnum]
        attr_accessor :line_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function = args[:function] unless args[:function].nil?
          @line_number = args[:line_number] unless args[:line_number].nil?
        end
      end
      
      # An object that provides the return value of a function executed through the
      # Apps Script Execution API. If an `run` call succeeds and the script function
      # returns successfully, the response body's `response` field will contain this `
      # ExecutionResponse` object.
      class ExecutionResponse
        include Google::Apis::Core::Hashable
      
        # The return value of the script function. The type will match the type returned
        # in Apps Script. Functions called through the Execution API cannot return Apps
        # Script-specific objects (such as a `Document` or `Calendar`); they can only
        # return primitive types such as a `string`, `number`, `array`, `object`, or `
        # boolean`.
        # Corresponds to the JSON property `result`
        # @return [Object]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result = args[:result] unless args[:result].nil?
        end
      end
    end
  end
end
