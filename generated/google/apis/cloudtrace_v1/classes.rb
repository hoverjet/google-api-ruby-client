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
    module CloudtraceV1
      
      # The response message for the `ListTraces` method.
      class ListTracesResponse
        include Google::Apis::Core::Hashable
      
        # List of trace records returned.
        # Corresponds to the JSON property `traces`
        # @return [Array<Google::Apis::CloudtraceV1::Trace>]
        attr_accessor :traces
      
        # If defined, indicates that there are more traces that match the request and
        # that this value should be passed to the next request to continue retrieving
        # additional traces.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @traces = args[:traces] unless args[:traces].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # A trace describes how long it takes for an application to perform an operation.
      # It consists of a set of spans, each of which represent a single timed event
      # within the operation.
      class Trace
        include Google::Apis::Core::Hashable
      
        # Project ID of the Cloud project where the trace data is stored.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Globally unique identifier for the trace. This identifier is a 128-bit numeric
        # value formatted as a 32-byte hex string.
        # Corresponds to the JSON property `traceId`
        # @return [String]
        attr_accessor :trace_id
      
        # Collection of spans in the trace.
        # Corresponds to the JSON property `spans`
        # @return [Array<Google::Apis::CloudtraceV1::TraceSpan>]
        attr_accessor :spans
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] unless args[:project_id].nil?
          @trace_id = args[:trace_id] unless args[:trace_id].nil?
          @spans = args[:spans] unless args[:spans].nil?
        end
      end
      
      # A span represents a single timed event within a trace. Spans can be nested and
      # form a trace tree. Often, a trace contains a root span that describes the end-
      # to-end latency of an operation and, optionally, one or more subspans for its
      # suboperations. Spans do not need to be contiguous. There may be gaps between
      # spans in a trace.
      class TraceSpan
        include Google::Apis::Core::Hashable
      
        # Identifier for the span. This identifier must be unique within a trace.
        # Corresponds to the JSON property `spanId`
        # @return [String]
        attr_accessor :span_id
      
        # Distinguishes between spans generated in a particular context. For example,
        # two spans with the same name may be distinguished using `RPC_CLIENT` and `
        # RPC_SERVER` to identify queueing latency associated with the span.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the trace. The trace name is sanitized and displayed in the Cloud
        # Trace tool in the Google Developers Console. The name may be a method name or
        # some other per-call site name. For the same executable and the same call point,
        # a best practice is to use a consistent name, which makes it easier to
        # correlate cross-trace spans.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Start time of the span in nanoseconds from the UNIX epoch.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # End time of the span in nanoseconds from the UNIX epoch.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # ID of the parent span, if any. Optional.
        # Corresponds to the JSON property `parentSpanId`
        # @return [String]
        attr_accessor :parent_span_id
      
        # Collection of labels associated with the span.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @span_id = args[:span_id] unless args[:span_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @parent_span_id = args[:parent_span_id] unless args[:parent_span_id].nil?
          @labels = args[:labels] unless args[:labels].nil?
        end
      end
      
      # List of new or updated traces.
      class Traces
        include Google::Apis::Core::Hashable
      
        # List of traces.
        # Corresponds to the JSON property `traces`
        # @return [Array<Google::Apis::CloudtraceV1::Trace>]
        attr_accessor :traces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @traces = args[:traces] unless args[:traces].nil?
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
