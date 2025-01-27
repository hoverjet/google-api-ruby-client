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

require 'google/apis/genomics_v1/service.rb'
require 'google/apis/genomics_v1/classes.rb'
require 'google/apis/genomics_v1/representations.rb'

module Google
  module Apis
    # Genomics API
    #
    # An API to store, process, explore, and share genomic data. It supports
    # reference-based alignements, genetic variants, and reference genomes. This API
    # provides an implementation of the Global Alliance for Genomics and Health (
    # GA4GH) v0.5.1 API as well as several extensions.
    #
    # @see 
    module GenomicsV1
      VERSION = 'V1'
      REVISION = '20151219'

      # View and manage your data in Google BigQuery
      AUTH_BIGQUERY = 'https://www.googleapis.com/auth/bigquery'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # Manage your data in Google Cloud Storage
      AUTH_DEVSTORAGE_READ_WRITE = 'https://www.googleapis.com/auth/devstorage.read_write'

      # View and manage Genomics data
      AUTH_GENOMICS = 'https://www.googleapis.com/auth/genomics'

      # View Genomics data
      AUTH_GENOMICS_READONLY = 'https://www.googleapis.com/auth/genomics.readonly'
    end
  end
end
