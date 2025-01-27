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
    module AdsenseV1_4
      
      # 
      class Account
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `creation_time`
        # @return [String]
        attr_accessor :creation_time
      
        # Unique identifier of this account.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsense#account.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether this account is premium.
        # Corresponds to the JSON property `premium`
        # @return [Boolean]
        attr_accessor :premium
        alias_method :premium?, :premium
      
        # Sub accounts of the this account.
        # Corresponds to the JSON property `subAccounts`
        # @return [Array<Google::Apis::AdsenseV1_4::Account>]
        attr_accessor :sub_accounts
      
        # AdSense timezone of this account.
        # Corresponds to the JSON property `timezone`
        # @return [String]
        attr_accessor :timezone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @premium = args[:premium] unless args[:premium].nil?
          @sub_accounts = args[:sub_accounts] unless args[:sub_accounts].nil?
          @timezone = args[:timezone] unless args[:timezone].nil?
        end
      end
      
      # 
      class Accounts
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The accounts returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsenseV1_4::Account>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsense#accounts.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through accounts. To retrieve the next page of
        # results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # 
      class AdClient
        include Google::Apis::Core::Hashable
      
        # Whether this ad client is opted in to ARC.
        # Corresponds to the JSON property `arcOptIn`
        # @return [Boolean]
        attr_accessor :arc_opt_in
        alias_method :arc_opt_in?, :arc_opt_in
      
        # ARC review mode this ad client is in. Empty if the client is not opted in to
        # ARC. Possible values: POST_REVIEW, AUTOMATIC_PRE_REVIEW.
        # Corresponds to the JSON property `arcReviewMode`
        # @return [String]
        attr_accessor :arc_review_mode
      
        # Unique identifier of this ad client.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsense#adClient.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This ad client's product code, which corresponds to the PRODUCT_CODE report
        # dimension.
        # Corresponds to the JSON property `productCode`
        # @return [String]
        attr_accessor :product_code
      
        # Whether this ad client supports being reported on.
        # Corresponds to the JSON property `supportsReporting`
        # @return [Boolean]
        attr_accessor :supports_reporting
        alias_method :supports_reporting?, :supports_reporting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arc_opt_in = args[:arc_opt_in] unless args[:arc_opt_in].nil?
          @arc_review_mode = args[:arc_review_mode] unless args[:arc_review_mode].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @product_code = args[:product_code] unless args[:product_code].nil?
          @supports_reporting = args[:supports_reporting] unless args[:supports_reporting].nil?
        end
      end
      
      # 
      class AdClients
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The ad clients returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsenseV1_4::AdClient>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsense#adClients.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through ad clients. To retrieve the next page
        # of results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # 
      class AdCode
        include Google::Apis::Core::Hashable
      
        # The ad code snippet.
        # Corresponds to the JSON property `adCode`
        # @return [String]
        attr_accessor :ad_code
      
        # Kind this is, in this case adsense#adCode.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_code = args[:ad_code] unless args[:ad_code].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class AdStyle
        include Google::Apis::Core::Hashable
      
        # The colors which are included in the style. These are represented as six
        # hexadecimal characters, similar to HTML color codes, but without the leading
        # hash.
        # Corresponds to the JSON property `colors`
        # @return [Google::Apis::AdsenseV1_4::AdStyle::Colors]
        attr_accessor :colors
      
        # The style of the corners in the ad.
        # Corresponds to the JSON property `corners`
        # @return [String]
        attr_accessor :corners
      
        # The font which is included in the style.
        # Corresponds to the JSON property `font`
        # @return [Google::Apis::AdsenseV1_4::AdStyle::Font]
        attr_accessor :font
      
        # Kind this is, in this case adsense#adStyle.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @colors = args[:colors] unless args[:colors].nil?
          @corners = args[:corners] unless args[:corners].nil?
          @font = args[:font] unless args[:font].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
        
        # The colors which are included in the style. These are represented as six
        # hexadecimal characters, similar to HTML color codes, but without the leading
        # hash.
        class Colors
          include Google::Apis::Core::Hashable
        
          # The color of the ad background.
          # Corresponds to the JSON property `background`
          # @return [String]
          attr_accessor :background
        
          # The color of the ad border.
          # Corresponds to the JSON property `border`
          # @return [String]
          attr_accessor :border
        
          # The color of the ad text.
          # Corresponds to the JSON property `text`
          # @return [String]
          attr_accessor :text
        
          # The color of the ad title.
          # Corresponds to the JSON property `title`
          # @return [String]
          attr_accessor :title
        
          # The color of the ad url.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @background = args[:background] unless args[:background].nil?
            @border = args[:border] unless args[:border].nil?
            @text = args[:text] unless args[:text].nil?
            @title = args[:title] unless args[:title].nil?
            @url = args[:url] unless args[:url].nil?
          end
        end
        
        # The font which is included in the style.
        class Font
          include Google::Apis::Core::Hashable
        
          # The family of the font.
          # Corresponds to the JSON property `family`
          # @return [String]
          attr_accessor :family
        
          # The size of the font.
          # Corresponds to the JSON property `size`
          # @return [String]
          attr_accessor :size
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @family = args[:family] unless args[:family].nil?
            @size = args[:size] unless args[:size].nil?
          end
        end
      end
      
      # 
      class AdUnit
        include Google::Apis::Core::Hashable
      
        # Identity code of this ad unit, not necessarily unique across ad clients.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Settings specific to content ads (AFC) and highend mobile content ads (AFMC).
        # Corresponds to the JSON property `contentAdsSettings`
        # @return [Google::Apis::AdsenseV1_4::AdUnit::ContentAdsSettings]
        attr_accessor :content_ads_settings
      
        # Custom style information specific to this ad unit.
        # Corresponds to the JSON property `customStyle`
        # @return [Google::Apis::AdsenseV1_4::AdStyle]
        attr_accessor :custom_style
      
        # Settings specific to feed ads (AFF).
        # Corresponds to the JSON property `feedAdsSettings`
        # @return [Google::Apis::AdsenseV1_4::AdUnit::FeedAdsSettings]
        attr_accessor :feed_ads_settings
      
        # Unique identifier of this ad unit. This should be considered an opaque
        # identifier; it is not safe to rely on it being in any particular format.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsense#adUnit.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Settings specific to WAP mobile content ads (AFMC).
        # Corresponds to the JSON property `mobileContentAdsSettings`
        # @return [Google::Apis::AdsenseV1_4::AdUnit::MobileContentAdsSettings]
        attr_accessor :mobile_content_ads_settings
      
        # Name of this ad unit.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # ID of the saved ad style which holds this ad unit's style information.
        # Corresponds to the JSON property `savedStyleId`
        # @return [String]
        attr_accessor :saved_style_id
      
        # Status of this ad unit. Possible values are:
        # NEW: Indicates that the ad unit was created within the last seven days and
        # does not yet have any activity associated with it.
        # ACTIVE: Indicates that there has been activity on this ad unit in the last
        # seven days.
        # INACTIVE: Indicates that there has been no activity on this ad unit in the
        # last seven days.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] unless args[:code].nil?
          @content_ads_settings = args[:content_ads_settings] unless args[:content_ads_settings].nil?
          @custom_style = args[:custom_style] unless args[:custom_style].nil?
          @feed_ads_settings = args[:feed_ads_settings] unless args[:feed_ads_settings].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @mobile_content_ads_settings = args[:mobile_content_ads_settings] unless args[:mobile_content_ads_settings].nil?
          @name = args[:name] unless args[:name].nil?
          @saved_style_id = args[:saved_style_id] unless args[:saved_style_id].nil?
          @status = args[:status] unless args[:status].nil?
        end
        
        # Settings specific to content ads (AFC) and highend mobile content ads (AFMC).
        class ContentAdsSettings
          include Google::Apis::Core::Hashable
        
          # The backup option to be used in instances where no ad is available.
          # Corresponds to the JSON property `backupOption`
          # @return [Google::Apis::AdsenseV1_4::AdUnit::ContentAdsSettings::BackupOption]
          attr_accessor :backup_option
        
          # Size of this ad unit.
          # Corresponds to the JSON property `size`
          # @return [String]
          attr_accessor :size
        
          # Type of this ad unit.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @backup_option = args[:backup_option] unless args[:backup_option].nil?
            @size = args[:size] unless args[:size].nil?
            @type = args[:type] unless args[:type].nil?
          end
          
          # The backup option to be used in instances where no ad is available.
          class BackupOption
            include Google::Apis::Core::Hashable
          
            # Color to use when type is set to COLOR.
            # Corresponds to the JSON property `color`
            # @return [String]
            attr_accessor :color
          
            # Type of the backup option. Possible values are BLANK, COLOR and URL.
            # Corresponds to the JSON property `type`
            # @return [String]
            attr_accessor :type
          
            # URL to use when type is set to URL.
            # Corresponds to the JSON property `url`
            # @return [String]
            attr_accessor :url
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @color = args[:color] unless args[:color].nil?
              @type = args[:type] unless args[:type].nil?
              @url = args[:url] unless args[:url].nil?
            end
          end
        end
        
        # Settings specific to feed ads (AFF).
        class FeedAdsSettings
          include Google::Apis::Core::Hashable
        
          # The position of the ads relative to the feed entries.
          # Corresponds to the JSON property `adPosition`
          # @return [String]
          attr_accessor :ad_position
        
          # The frequency at which ads should appear in the feed (i.e. every N entries).
          # Corresponds to the JSON property `frequency`
          # @return [Fixnum]
          attr_accessor :frequency
        
          # The minimum length an entry should be in order to have attached ads.
          # Corresponds to the JSON property `minimumWordCount`
          # @return [Fixnum]
          attr_accessor :minimum_word_count
        
          # The type of ads which should appear.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @ad_position = args[:ad_position] unless args[:ad_position].nil?
            @frequency = args[:frequency] unless args[:frequency].nil?
            @minimum_word_count = args[:minimum_word_count] unless args[:minimum_word_count].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
        
        # Settings specific to WAP mobile content ads (AFMC).
        class MobileContentAdsSettings
          include Google::Apis::Core::Hashable
        
          # The markup language to use for this ad unit.
          # Corresponds to the JSON property `markupLanguage`
          # @return [String]
          attr_accessor :markup_language
        
          # The scripting language to use for this ad unit.
          # Corresponds to the JSON property `scriptingLanguage`
          # @return [String]
          attr_accessor :scripting_language
        
          # Size of this ad unit.
          # Corresponds to the JSON property `size`
          # @return [String]
          attr_accessor :size
        
          # Type of this ad unit.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @markup_language = args[:markup_language] unless args[:markup_language].nil?
            @scripting_language = args[:scripting_language] unless args[:scripting_language].nil?
            @size = args[:size] unless args[:size].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
      end
      
      # 
      class AdUnits
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The ad units returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsenseV1_4::AdUnit>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsense#adUnits.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through ad units. To retrieve the next page of
        # results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # 
      class GenerateReportResponse
        include Google::Apis::Core::Hashable
      
        # The averages of the report. This is the same length as any other row in the
        # report; cells corresponding to dimension columns are empty.
        # Corresponds to the JSON property `averages`
        # @return [Array<String>]
        attr_accessor :averages
      
        # The requested end date in yyyy-mm-dd format.
        # Corresponds to the JSON property `endDate`
        # @return [String]
        attr_accessor :end_date
      
        # The header information of the columns requested in the report. This is a list
        # of headers; one for each dimension in the request, followed by one for each
        # metric in the request.
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::AdsenseV1_4::GenerateReportResponse::Header>]
        attr_accessor :headers
      
        # Kind this is, in this case adsense#report.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The output rows of the report. Each row is a list of cells; one for each
        # dimension in the request, followed by one for each metric in the request. The
        # dimension cells contain strings, and the metric cells contain numbers.
        # Corresponds to the JSON property `rows`
        # @return [Array<Array<String>>]
        attr_accessor :rows
      
        # The requested start date in yyyy-mm-dd format.
        # Corresponds to the JSON property `startDate`
        # @return [String]
        attr_accessor :start_date
      
        # The total number of rows matched by the report request. Fewer rows may be
        # returned in the response due to being limited by the row count requested or
        # the report row limit.
        # Corresponds to the JSON property `totalMatchedRows`
        # @return [String]
        attr_accessor :total_matched_rows
      
        # The totals of the report. This is the same length as any other row in the
        # report; cells corresponding to dimension columns are empty.
        # Corresponds to the JSON property `totals`
        # @return [Array<String>]
        attr_accessor :totals
      
        # Any warnings associated with generation of the report.
        # Corresponds to the JSON property `warnings`
        # @return [Array<String>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @averages = args[:averages] unless args[:averages].nil?
          @end_date = args[:end_date] unless args[:end_date].nil?
          @headers = args[:headers] unless args[:headers].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @rows = args[:rows] unless args[:rows].nil?
          @start_date = args[:start_date] unless args[:start_date].nil?
          @total_matched_rows = args[:total_matched_rows] unless args[:total_matched_rows].nil?
          @totals = args[:totals] unless args[:totals].nil?
          @warnings = args[:warnings] unless args[:warnings].nil?
        end
        
        # 
        class Header
          include Google::Apis::Core::Hashable
        
          # The currency of this column. Only present if the header type is
          # METRIC_CURRENCY.
          # Corresponds to the JSON property `currency`
          # @return [String]
          attr_accessor :currency
        
          # The name of the header.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or
          # METRIC_CURRENCY.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @currency = args[:currency] unless args[:currency].nil?
            @name = args[:name] unless args[:name].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
      end
      
      # 
      class Alert
        include Google::Apis::Core::Hashable
      
        # Unique identifier of this alert. This should be considered an opaque
        # identifier; it is not safe to rely on it being in any particular format.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Whether this alert can be dismissed.
        # Corresponds to the JSON property `isDismissible`
        # @return [Boolean]
        attr_accessor :is_dismissible
        alias_method :is_dismissible?, :is_dismissible
      
        # Kind of resource this is, in this case adsense#alert.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The localized alert message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Severity of this alert. Possible values: INFO, WARNING, SEVERE.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Type of this alert. Possible values: SELF_HOLD, MIGRATED_TO_BILLING3,
        # ADDRESS_PIN_VERIFICATION, PHONE_PIN_VERIFICATION, CORPORATE_ENTITY,
        # GRAYLISTED_PUBLISHER, API_HOLD.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @is_dismissible = args[:is_dismissible] unless args[:is_dismissible].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @message = args[:message] unless args[:message].nil?
          @severity = args[:severity] unless args[:severity].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # 
      class Alerts
        include Google::Apis::Core::Hashable
      
        # The alerts returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsenseV1_4::Alert>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsense#alerts.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class CustomChannel
        include Google::Apis::Core::Hashable
      
        # Code of this custom channel, not necessarily unique across ad clients.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Unique identifier of this custom channel. This should be considered an opaque
        # identifier; it is not safe to rely on it being in any particular format.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsense#customChannel.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this custom channel.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The targeting information of this custom channel, if activated.
        # Corresponds to the JSON property `targetingInfo`
        # @return [Google::Apis::AdsenseV1_4::CustomChannel::TargetingInfo]
        attr_accessor :targeting_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] unless args[:code].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @targeting_info = args[:targeting_info] unless args[:targeting_info].nil?
        end
        
        # The targeting information of this custom channel, if activated.
        class TargetingInfo
          include Google::Apis::Core::Hashable
        
          # The name used to describe this channel externally.
          # Corresponds to the JSON property `adsAppearOn`
          # @return [String]
          attr_accessor :ads_appear_on
        
          # The external description of the channel.
          # Corresponds to the JSON property `description`
          # @return [String]
          attr_accessor :description
        
          # The locations in which ads appear. (Only valid for content and mobile content
          # ads). Acceptable values for content ads are: TOP_LEFT, TOP_CENTER, TOP_RIGHT,
          # MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER,
          # BOTTOM_RIGHT, MULTIPLE_LOCATIONS. Acceptable values for mobile content ads are:
          # TOP, MIDDLE, BOTTOM, MULTIPLE_LOCATIONS.
          # Corresponds to the JSON property `location`
          # @return [String]
          attr_accessor :location
        
          # The language of the sites ads will be displayed on.
          # Corresponds to the JSON property `siteLanguage`
          # @return [String]
          attr_accessor :site_language
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @ads_appear_on = args[:ads_appear_on] unless args[:ads_appear_on].nil?
            @description = args[:description] unless args[:description].nil?
            @location = args[:location] unless args[:location].nil?
            @site_language = args[:site_language] unless args[:site_language].nil?
          end
        end
      end
      
      # 
      class CustomChannels
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The custom channels returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsenseV1_4::CustomChannel>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsense#customChannels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through custom channels. To retrieve the next
        # page of results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # 
      class Metadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsenseV1_4::ReportingMetadataEntry>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsense#metadata.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class Payment
        include Google::Apis::Core::Hashable
      
        # Unique identifier of this Payment.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsense#payment.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The amount to be paid.
        # Corresponds to the JSON property `paymentAmount`
        # @return [String]
        attr_accessor :payment_amount
      
        # The currency code for the amount to be paid.
        # Corresponds to the JSON property `paymentAmountCurrencyCode`
        # @return [String]
        attr_accessor :payment_amount_currency_code
      
        # The date this payment was/will be credited to the user, or none if the payment
        # threshold has not been met.
        # Corresponds to the JSON property `paymentDate`
        # @return [String]
        attr_accessor :payment_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @payment_amount = args[:payment_amount] unless args[:payment_amount].nil?
          @payment_amount_currency_code = args[:payment_amount_currency_code] unless args[:payment_amount_currency_code].nil?
          @payment_date = args[:payment_date] unless args[:payment_date].nil?
        end
      end
      
      # 
      class Payments
        include Google::Apis::Core::Hashable
      
        # The list of Payments for the account. One or both of a) the account's most
        # recent payment; and b) the account's upcoming payment.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsenseV1_4::Payment>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsense#payments.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class ReportingMetadataEntry
        include Google::Apis::Core::Hashable
      
        # For metrics this is a list of dimension IDs which the metric is compatible
        # with, for dimensions it is a list of compatibility groups the dimension
        # belongs to.
        # Corresponds to the JSON property `compatibleDimensions`
        # @return [Array<String>]
        attr_accessor :compatible_dimensions
      
        # The names of the metrics the dimension or metric this reporting metadata entry
        # describes is compatible with.
        # Corresponds to the JSON property `compatibleMetrics`
        # @return [Array<String>]
        attr_accessor :compatible_metrics
      
        # Unique identifier of this reporting metadata entry, corresponding to the name
        # of the appropriate dimension or metric.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsense#reportingMetadataEntry.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The names of the dimensions which the dimension or metric this reporting
        # metadata entry describes requires to also be present in order for the report
        # to be valid. Omitting these will not cause an error or warning, but may result
        # in data which cannot be correctly interpreted.
        # Corresponds to the JSON property `requiredDimensions`
        # @return [Array<String>]
        attr_accessor :required_dimensions
      
        # The names of the metrics which the dimension or metric this reporting metadata
        # entry describes requires to also be present in order for the report to be
        # valid. Omitting these will not cause an error or warning, but may result in
        # data which cannot be correctly interpreted.
        # Corresponds to the JSON property `requiredMetrics`
        # @return [Array<String>]
        attr_accessor :required_metrics
      
        # The codes of the projects supported by the dimension or metric this reporting
        # metadata entry describes.
        # Corresponds to the JSON property `supportedProducts`
        # @return [Array<String>]
        attr_accessor :supported_products
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compatible_dimensions = args[:compatible_dimensions] unless args[:compatible_dimensions].nil?
          @compatible_metrics = args[:compatible_metrics] unless args[:compatible_metrics].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @required_dimensions = args[:required_dimensions] unless args[:required_dimensions].nil?
          @required_metrics = args[:required_metrics] unless args[:required_metrics].nil?
          @supported_products = args[:supported_products] unless args[:supported_products].nil?
        end
      end
      
      # 
      class SavedAdStyle
        include Google::Apis::Core::Hashable
      
        # The AdStyle itself.
        # Corresponds to the JSON property `adStyle`
        # @return [Google::Apis::AdsenseV1_4::AdStyle]
        attr_accessor :ad_style
      
        # Unique identifier of this saved ad style. This should be considered an opaque
        # identifier; it is not safe to rely on it being in any particular format.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsense#savedAdStyle.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The user selected name of this SavedAdStyle.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_style = args[:ad_style] unless args[:ad_style].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # 
      class SavedAdStyles
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The saved ad styles returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsenseV1_4::SavedAdStyle>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsense#savedAdStyles.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through ad units. To retrieve the next page of
        # results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # 
      class SavedReport
        include Google::Apis::Core::Hashable
      
        # Unique identifier of this saved report.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsense#savedReport.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This saved report's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # 
      class SavedReports
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The saved reports returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsenseV1_4::SavedReport>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsense#savedReports.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through saved reports. To retrieve the next
        # page of results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # 
      class UrlChannel
        include Google::Apis::Core::Hashable
      
        # Unique identifier of this URL channel. This should be considered an opaque
        # identifier; it is not safe to rely on it being in any particular format.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsense#urlChannel.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # URL Pattern of this URL channel. Does not include "http://" or "https://".
        # Example: www.example.com/home
        # Corresponds to the JSON property `urlPattern`
        # @return [String]
        attr_accessor :url_pattern
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @url_pattern = args[:url_pattern] unless args[:url_pattern].nil?
        end
      end
      
      # 
      class UrlChannels
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The URL channels returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsenseV1_4::UrlChannel>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsense#urlChannels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through URL channels. To retrieve the next
        # page of results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
    end
  end
end
