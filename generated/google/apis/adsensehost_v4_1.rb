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

require 'google/apis/adsensehost_v4_1/service.rb'
require 'google/apis/adsensehost_v4_1/classes.rb'
require 'google/apis/adsensehost_v4_1/representations.rb'

module Google
  module Apis
    # AdSense Host API
    #
    # Gives AdSense Hosts access to report generation, ad code generation, and
    # publisher management capabilities.
    #
    # @see https://developers.google.com/adsense/host/
    module AdsensehostV4_1
      VERSION = 'V4_1'
      REVISION = '20151206'

      # View and manage your AdSense host data and associated accounts
      AUTH_ADSENSEHOST = 'https://www.googleapis.com/auth/adsensehost'
    end
  end
end
