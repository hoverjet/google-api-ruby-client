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
    module PlusV1
      
      # 
      class Acl
        include Google::Apis::Core::Hashable
      
        # Description of the access granted, suitable for display.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The list of access entries.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::PlusV1::PlusAclentryResource>]
        attr_accessor :items
      
        # Identifies this resource as a collection of access controls. Value: "plus#acl".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] unless args[:description].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class Activity
        include Google::Apis::Core::Hashable
      
        # Identifies who has access to see this activity.
        # Corresponds to the JSON property `access`
        # @return [Google::Apis::PlusV1::Acl]
        attr_accessor :access
      
        # The person who performed this activity.
        # Corresponds to the JSON property `actor`
        # @return [Google::Apis::PlusV1::Activity::Actor]
        attr_accessor :actor
      
        # Street address where this activity occurred.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Additional content added by the person who shared this activity, applicable
        # only when resharing an activity.
        # Corresponds to the JSON property `annotation`
        # @return [String]
        attr_accessor :annotation
      
        # If this activity is a crosspost from another system, this property specifies
        # the ID of the original activity.
        # Corresponds to the JSON property `crosspostSource`
        # @return [String]
        attr_accessor :crosspost_source
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Latitude and longitude where this activity occurred. Format is latitude
        # followed by longitude, space separated.
        # Corresponds to the JSON property `geocode`
        # @return [String]
        attr_accessor :geocode
      
        # The ID of this activity.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this resource as an activity. Value: "plus#activity".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The location where this activity occurred.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::PlusV1::Place]
        attr_accessor :location
      
        # The object of this activity.
        # Corresponds to the JSON property `object`
        # @return [Google::Apis::PlusV1::Activity::Object]
        attr_accessor :object
      
        # ID of the place where this activity occurred.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # Name of the place where this activity occurred.
        # Corresponds to the JSON property `placeName`
        # @return [String]
        attr_accessor :place_name
      
        # The service provider that initially published this activity.
        # Corresponds to the JSON property `provider`
        # @return [Google::Apis::PlusV1::Activity::Provider]
        attr_accessor :provider
      
        # The time at which this activity was initially published. Formatted as an RFC
        # 3339 timestamp.
        # Corresponds to the JSON property `published`
        # @return [DateTime]
        attr_accessor :published
      
        # Radius, in meters, of the region where this activity occurred, centered at the
        # latitude and longitude identified in geocode.
        # Corresponds to the JSON property `radius`
        # @return [String]
        attr_accessor :radius
      
        # Title of this activity.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The time at which this activity was last updated. Formatted as an RFC 3339
        # timestamp.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        # The link to this activity.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # This activity's verb, which indicates the action that was performed. Possible
        # values include, but are not limited to, the following values:
        # - "post" - Publish content to the stream.
        # - "share" - Reshare an activity.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access = args[:access] unless args[:access].nil?
          @actor = args[:actor] unless args[:actor].nil?
          @address = args[:address] unless args[:address].nil?
          @annotation = args[:annotation] unless args[:annotation].nil?
          @crosspost_source = args[:crosspost_source] unless args[:crosspost_source].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @geocode = args[:geocode] unless args[:geocode].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @location = args[:location] unless args[:location].nil?
          @object = args[:object] unless args[:object].nil?
          @place_id = args[:place_id] unless args[:place_id].nil?
          @place_name = args[:place_name] unless args[:place_name].nil?
          @provider = args[:provider] unless args[:provider].nil?
          @published = args[:published] unless args[:published].nil?
          @radius = args[:radius] unless args[:radius].nil?
          @title = args[:title] unless args[:title].nil?
          @updated = args[:updated] unless args[:updated].nil?
          @url = args[:url] unless args[:url].nil?
          @verb = args[:verb] unless args[:verb].nil?
        end
        
        # The person who performed this activity.
        class Actor
          include Google::Apis::Core::Hashable
        
          # Actor info specific to particular clients.
          # Corresponds to the JSON property `clientSpecificActorInfo`
          # @return [Google::Apis::PlusV1::Activity::Actor::ClientSpecificActorInfo]
          attr_accessor :client_specific_actor_info
        
          # The name of the actor, suitable for display.
          # Corresponds to the JSON property `displayName`
          # @return [String]
          attr_accessor :display_name
        
          # The ID of the actor's Person resource.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # The image representation of the actor.
          # Corresponds to the JSON property `image`
          # @return [Google::Apis::PlusV1::Activity::Actor::Image]
          attr_accessor :image
        
          # An object representation of the individual components of name.
          # Corresponds to the JSON property `name`
          # @return [Google::Apis::PlusV1::Activity::Actor::Name]
          attr_accessor :name
        
          # The link to the actor's Google profile.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          # Verification status of actor.
          # Corresponds to the JSON property `verification`
          # @return [Google::Apis::PlusV1::Activity::Actor::Verification]
          attr_accessor :verification
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @client_specific_actor_info = args[:client_specific_actor_info] unless args[:client_specific_actor_info].nil?
            @display_name = args[:display_name] unless args[:display_name].nil?
            @id = args[:id] unless args[:id].nil?
            @image = args[:image] unless args[:image].nil?
            @name = args[:name] unless args[:name].nil?
            @url = args[:url] unless args[:url].nil?
            @verification = args[:verification] unless args[:verification].nil?
          end
          
          # Actor info specific to particular clients.
          class ClientSpecificActorInfo
            include Google::Apis::Core::Hashable
          
            # Actor info specific to YouTube clients.
            # Corresponds to the JSON property `youtubeActorInfo`
            # @return [Google::Apis::PlusV1::Activity::Actor::ClientSpecificActorInfo::YoutubeActorInfo]
            attr_accessor :youtube_actor_info
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @youtube_actor_info = args[:youtube_actor_info] unless args[:youtube_actor_info].nil?
            end
            
            # Actor info specific to YouTube clients.
            class YoutubeActorInfo
              include Google::Apis::Core::Hashable
            
              # ID of the YouTube channel owned by the Actor.
              # Corresponds to the JSON property `channelId`
              # @return [String]
              attr_accessor :channel_id
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @channel_id = args[:channel_id] unless args[:channel_id].nil?
              end
            end
          end
          
          # The image representation of the actor.
          class Image
            include Google::Apis::Core::Hashable
          
            # The URL of the actor's profile photo. To resize the image and crop it to a
            # square, append the query string ?sz=x, where x is the dimension in pixels of
            # each side.
            # Corresponds to the JSON property `url`
            # @return [String]
            attr_accessor :url
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @url = args[:url] unless args[:url].nil?
            end
          end
          
          # An object representation of the individual components of name.
          class Name
            include Google::Apis::Core::Hashable
          
            # The family name ("last name") of the actor.
            # Corresponds to the JSON property `familyName`
            # @return [String]
            attr_accessor :family_name
          
            # The given name ("first name") of the actor.
            # Corresponds to the JSON property `givenName`
            # @return [String]
            attr_accessor :given_name
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @family_name = args[:family_name] unless args[:family_name].nil?
              @given_name = args[:given_name] unless args[:given_name].nil?
            end
          end
          
          # Verification status of actor.
          class Verification
            include Google::Apis::Core::Hashable
          
            # Verification for one-time or manual processes.
            # Corresponds to the JSON property `adHocVerified`
            # @return [String]
            attr_accessor :ad_hoc_verified
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @ad_hoc_verified = args[:ad_hoc_verified] unless args[:ad_hoc_verified].nil?
            end
          end
        end
        
        # The object of this activity.
        class Object
          include Google::Apis::Core::Hashable
        
          # If this activity's object is itself another activity, such as when a person
          # reshares an activity, this property specifies the original activity's actor.
          # Corresponds to the JSON property `actor`
          # @return [Google::Apis::PlusV1::Activity::Object::Actor]
          attr_accessor :actor
        
          # The media objects attached to this activity.
          # Corresponds to the JSON property `attachments`
          # @return [Array<Google::Apis::PlusV1::Activity::Object::Attachment>]
          attr_accessor :attachments
        
          # The HTML-formatted content, which is suitable for display.
          # Corresponds to the JSON property `content`
          # @return [String]
          attr_accessor :content
        
          # The ID of the object. When resharing an activity, this is the ID of the
          # activity that is being reshared.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # The type of the object. Possible values include, but are not limited to, the
          # following values:
          # - "note" - Textual content.
          # - "activity" - A Google+ activity.
          # Corresponds to the JSON property `objectType`
          # @return [String]
          attr_accessor :object_type
        
          # The content (text) as provided by the author, which is stored without any HTML
          # formatting. When creating or updating an activity, this value must be supplied
          # as plain text in the request.
          # Corresponds to the JSON property `originalContent`
          # @return [String]
          attr_accessor :original_content
        
          # People who +1'd this activity.
          # Corresponds to the JSON property `plusoners`
          # @return [Google::Apis::PlusV1::Activity::Object::Plusoners]
          attr_accessor :plusoners
        
          # Comments in reply to this activity.
          # Corresponds to the JSON property `replies`
          # @return [Google::Apis::PlusV1::Activity::Object::Replies]
          attr_accessor :replies
        
          # People who reshared this activity.
          # Corresponds to the JSON property `resharers`
          # @return [Google::Apis::PlusV1::Activity::Object::Resharers]
          attr_accessor :resharers
        
          # The URL that points to the linked resource.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @actor = args[:actor] unless args[:actor].nil?
            @attachments = args[:attachments] unless args[:attachments].nil?
            @content = args[:content] unless args[:content].nil?
            @id = args[:id] unless args[:id].nil?
            @object_type = args[:object_type] unless args[:object_type].nil?
            @original_content = args[:original_content] unless args[:original_content].nil?
            @plusoners = args[:plusoners] unless args[:plusoners].nil?
            @replies = args[:replies] unless args[:replies].nil?
            @resharers = args[:resharers] unless args[:resharers].nil?
            @url = args[:url] unless args[:url].nil?
          end
          
          # If this activity's object is itself another activity, such as when a person
          # reshares an activity, this property specifies the original activity's actor.
          class Actor
            include Google::Apis::Core::Hashable
          
            # Actor info specific to particular clients.
            # Corresponds to the JSON property `clientSpecificActorInfo`
            # @return [Google::Apis::PlusV1::Activity::Object::Actor::ClientSpecificActorInfo]
            attr_accessor :client_specific_actor_info
          
            # The original actor's name, which is suitable for display.
            # Corresponds to the JSON property `displayName`
            # @return [String]
            attr_accessor :display_name
          
            # ID of the original actor.
            # Corresponds to the JSON property `id`
            # @return [String]
            attr_accessor :id
          
            # The image representation of the original actor.
            # Corresponds to the JSON property `image`
            # @return [Google::Apis::PlusV1::Activity::Object::Actor::Image]
            attr_accessor :image
          
            # A link to the original actor's Google profile.
            # Corresponds to the JSON property `url`
            # @return [String]
            attr_accessor :url
          
            # Verification status of actor.
            # Corresponds to the JSON property `verification`
            # @return [Google::Apis::PlusV1::Activity::Object::Actor::Verification]
            attr_accessor :verification
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @client_specific_actor_info = args[:client_specific_actor_info] unless args[:client_specific_actor_info].nil?
              @display_name = args[:display_name] unless args[:display_name].nil?
              @id = args[:id] unless args[:id].nil?
              @image = args[:image] unless args[:image].nil?
              @url = args[:url] unless args[:url].nil?
              @verification = args[:verification] unless args[:verification].nil?
            end
            
            # Actor info specific to particular clients.
            class ClientSpecificActorInfo
              include Google::Apis::Core::Hashable
            
              # Actor info specific to YouTube clients.
              # Corresponds to the JSON property `youtubeActorInfo`
              # @return [Google::Apis::PlusV1::Activity::Object::Actor::ClientSpecificActorInfo::YoutubeActorInfo]
              attr_accessor :youtube_actor_info
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @youtube_actor_info = args[:youtube_actor_info] unless args[:youtube_actor_info].nil?
              end
              
              # Actor info specific to YouTube clients.
              class YoutubeActorInfo
                include Google::Apis::Core::Hashable
              
                # ID of the YouTube channel owned by the Actor.
                # Corresponds to the JSON property `channelId`
                # @return [String]
                attr_accessor :channel_id
              
                def initialize(**args)
                   update!(**args)
                end
              
                # Update properties of this object
                def update!(**args)
                  @channel_id = args[:channel_id] unless args[:channel_id].nil?
                end
              end
            end
            
            # The image representation of the original actor.
            class Image
              include Google::Apis::Core::Hashable
            
              # A URL that points to a thumbnail photo of the original actor.
              # Corresponds to the JSON property `url`
              # @return [String]
              attr_accessor :url
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @url = args[:url] unless args[:url].nil?
              end
            end
            
            # Verification status of actor.
            class Verification
              include Google::Apis::Core::Hashable
            
              # Verification for one-time or manual processes.
              # Corresponds to the JSON property `adHocVerified`
              # @return [String]
              attr_accessor :ad_hoc_verified
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @ad_hoc_verified = args[:ad_hoc_verified] unless args[:ad_hoc_verified].nil?
              end
            end
          end
          
          # 
          class Attachment
            include Google::Apis::Core::Hashable
          
            # If the attachment is an article, this property contains a snippet of text from
            # the article. It can also include descriptions for other types.
            # Corresponds to the JSON property `content`
            # @return [String]
            attr_accessor :content
          
            # The title of the attachment, such as a photo caption or an article title.
            # Corresponds to the JSON property `displayName`
            # @return [String]
            attr_accessor :display_name
          
            # If the attachment is a video, the embeddable link.
            # Corresponds to the JSON property `embed`
            # @return [Google::Apis::PlusV1::Activity::Object::Attachment::Embed]
            attr_accessor :embed
          
            # The full image URL for photo attachments.
            # Corresponds to the JSON property `fullImage`
            # @return [Google::Apis::PlusV1::Activity::Object::Attachment::FullImage]
            attr_accessor :full_image
          
            # The ID of the attachment.
            # Corresponds to the JSON property `id`
            # @return [String]
            attr_accessor :id
          
            # The preview image for photos or videos.
            # Corresponds to the JSON property `image`
            # @return [Google::Apis::PlusV1::Activity::Object::Attachment::Image]
            attr_accessor :image
          
            # The type of media object. Possible values include, but are not limited to, the
            # following values:
            # - "photo" - A photo.
            # - "album" - A photo album.
            # - "video" - A video.
            # - "article" - An article, specified by a link.
            # Corresponds to the JSON property `objectType`
            # @return [String]
            attr_accessor :object_type
          
            # If the attachment is an album, this property is a list of potential additional
            # thumbnails from the album.
            # Corresponds to the JSON property `thumbnails`
            # @return [Array<Google::Apis::PlusV1::Activity::Object::Attachment::Thumbnail>]
            attr_accessor :thumbnails
          
            # The link to the attachment, which should be of type text/html.
            # Corresponds to the JSON property `url`
            # @return [String]
            attr_accessor :url
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @content = args[:content] unless args[:content].nil?
              @display_name = args[:display_name] unless args[:display_name].nil?
              @embed = args[:embed] unless args[:embed].nil?
              @full_image = args[:full_image] unless args[:full_image].nil?
              @id = args[:id] unless args[:id].nil?
              @image = args[:image] unless args[:image].nil?
              @object_type = args[:object_type] unless args[:object_type].nil?
              @thumbnails = args[:thumbnails] unless args[:thumbnails].nil?
              @url = args[:url] unless args[:url].nil?
            end
            
            # If the attachment is a video, the embeddable link.
            class Embed
              include Google::Apis::Core::Hashable
            
              # Media type of the link.
              # Corresponds to the JSON property `type`
              # @return [String]
              attr_accessor :type
            
              # URL of the link.
              # Corresponds to the JSON property `url`
              # @return [String]
              attr_accessor :url
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @type = args[:type] unless args[:type].nil?
                @url = args[:url] unless args[:url].nil?
              end
            end
            
            # The full image URL for photo attachments.
            class FullImage
              include Google::Apis::Core::Hashable
            
              # The height, in pixels, of the linked resource.
              # Corresponds to the JSON property `height`
              # @return [Fixnum]
              attr_accessor :height
            
              # Media type of the link.
              # Corresponds to the JSON property `type`
              # @return [String]
              attr_accessor :type
            
              # URL of the image.
              # Corresponds to the JSON property `url`
              # @return [String]
              attr_accessor :url
            
              # The width, in pixels, of the linked resource.
              # Corresponds to the JSON property `width`
              # @return [Fixnum]
              attr_accessor :width
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @height = args[:height] unless args[:height].nil?
                @type = args[:type] unless args[:type].nil?
                @url = args[:url] unless args[:url].nil?
                @width = args[:width] unless args[:width].nil?
              end
            end
            
            # The preview image for photos or videos.
            class Image
              include Google::Apis::Core::Hashable
            
              # The height, in pixels, of the linked resource.
              # Corresponds to the JSON property `height`
              # @return [Fixnum]
              attr_accessor :height
            
              # Media type of the link.
              # Corresponds to the JSON property `type`
              # @return [String]
              attr_accessor :type
            
              # Image URL.
              # Corresponds to the JSON property `url`
              # @return [String]
              attr_accessor :url
            
              # The width, in pixels, of the linked resource.
              # Corresponds to the JSON property `width`
              # @return [Fixnum]
              attr_accessor :width
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @height = args[:height] unless args[:height].nil?
                @type = args[:type] unless args[:type].nil?
                @url = args[:url] unless args[:url].nil?
                @width = args[:width] unless args[:width].nil?
              end
            end
            
            # 
            class Thumbnail
              include Google::Apis::Core::Hashable
            
              # Potential name of the thumbnail.
              # Corresponds to the JSON property `description`
              # @return [String]
              attr_accessor :description
            
              # Image resource.
              # Corresponds to the JSON property `image`
              # @return [Google::Apis::PlusV1::Activity::Object::Attachment::Thumbnail::Image]
              attr_accessor :image
            
              # URL of the webpage containing the image.
              # Corresponds to the JSON property `url`
              # @return [String]
              attr_accessor :url
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @description = args[:description] unless args[:description].nil?
                @image = args[:image] unless args[:image].nil?
                @url = args[:url] unless args[:url].nil?
              end
              
              # Image resource.
              class Image
                include Google::Apis::Core::Hashable
              
                # The height, in pixels, of the linked resource.
                # Corresponds to the JSON property `height`
                # @return [Fixnum]
                attr_accessor :height
              
                # Media type of the link.
                # Corresponds to the JSON property `type`
                # @return [String]
                attr_accessor :type
              
                # Image url.
                # Corresponds to the JSON property `url`
                # @return [String]
                attr_accessor :url
              
                # The width, in pixels, of the linked resource.
                # Corresponds to the JSON property `width`
                # @return [Fixnum]
                attr_accessor :width
              
                def initialize(**args)
                   update!(**args)
                end
              
                # Update properties of this object
                def update!(**args)
                  @height = args[:height] unless args[:height].nil?
                  @type = args[:type] unless args[:type].nil?
                  @url = args[:url] unless args[:url].nil?
                  @width = args[:width] unless args[:width].nil?
                end
              end
            end
          end
          
          # People who +1'd this activity.
          class Plusoners
            include Google::Apis::Core::Hashable
          
            # The URL for the collection of people who +1'd this activity.
            # Corresponds to the JSON property `selfLink`
            # @return [String]
            attr_accessor :self_link
          
            # Total number of people who +1'd this activity.
            # Corresponds to the JSON property `totalItems`
            # @return [Fixnum]
            attr_accessor :total_items
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @self_link = args[:self_link] unless args[:self_link].nil?
              @total_items = args[:total_items] unless args[:total_items].nil?
            end
          end
          
          # Comments in reply to this activity.
          class Replies
            include Google::Apis::Core::Hashable
          
            # The URL for the collection of comments in reply to this activity.
            # Corresponds to the JSON property `selfLink`
            # @return [String]
            attr_accessor :self_link
          
            # Total number of comments on this activity.
            # Corresponds to the JSON property `totalItems`
            # @return [Fixnum]
            attr_accessor :total_items
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @self_link = args[:self_link] unless args[:self_link].nil?
              @total_items = args[:total_items] unless args[:total_items].nil?
            end
          end
          
          # People who reshared this activity.
          class Resharers
            include Google::Apis::Core::Hashable
          
            # The URL for the collection of resharers.
            # Corresponds to the JSON property `selfLink`
            # @return [String]
            attr_accessor :self_link
          
            # Total number of people who reshared this activity.
            # Corresponds to the JSON property `totalItems`
            # @return [Fixnum]
            attr_accessor :total_items
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @self_link = args[:self_link] unless args[:self_link].nil?
              @total_items = args[:total_items] unless args[:total_items].nil?
            end
          end
        end
        
        # The service provider that initially published this activity.
        class Provider
          include Google::Apis::Core::Hashable
        
          # Name of the service provider.
          # Corresponds to the JSON property `title`
          # @return [String]
          attr_accessor :title
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @title = args[:title] unless args[:title].nil?
          end
        end
      end
      
      # 
      class ActivityFeed
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The ID of this collection of activities. Deprecated.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The activities in this page of results.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::PlusV1::Activity>]
        attr_accessor :items
      
        # Identifies this resource as a collection of activities. Value: "plus#
        # activityFeed".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to the next page of activities.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Link to this activity resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The title of this collection of activities, which is a truncated portion of
        # the content.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The time at which this collection of activities was last updated. Formatted as
        # an RFC 3339 timestamp.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @title = args[:title] unless args[:title].nil?
          @updated = args[:updated] unless args[:updated].nil?
        end
      end
      
      # 
      class Comment
        include Google::Apis::Core::Hashable
      
        # The person who posted this comment.
        # Corresponds to the JSON property `actor`
        # @return [Google::Apis::PlusV1::Comment::Actor]
        attr_accessor :actor
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The ID of this comment.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The activity this comment replied to.
        # Corresponds to the JSON property `inReplyTo`
        # @return [Array<Google::Apis::PlusV1::Comment::InReplyTo>]
        attr_accessor :in_reply_to
      
        # Identifies this resource as a comment. Value: "plus#comment".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The object of this comment.
        # Corresponds to the JSON property `object`
        # @return [Google::Apis::PlusV1::Comment::Object]
        attr_accessor :object
      
        # People who +1'd this comment.
        # Corresponds to the JSON property `plusoners`
        # @return [Google::Apis::PlusV1::Comment::Plusoners]
        attr_accessor :plusoners
      
        # The time at which this comment was initially published. Formatted as an RFC
        # 3339 timestamp.
        # Corresponds to the JSON property `published`
        # @return [DateTime]
        attr_accessor :published
      
        # Link to this comment resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The time at which this comment was last updated. Formatted as an RFC 3339
        # timestamp.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        # This comment's verb, indicating what action was performed. Possible values are:
        # 
        # - "post" - Publish content to the stream.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor = args[:actor] unless args[:actor].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @in_reply_to = args[:in_reply_to] unless args[:in_reply_to].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @object = args[:object] unless args[:object].nil?
          @plusoners = args[:plusoners] unless args[:plusoners].nil?
          @published = args[:published] unless args[:published].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @updated = args[:updated] unless args[:updated].nil?
          @verb = args[:verb] unless args[:verb].nil?
        end
        
        # The person who posted this comment.
        class Actor
          include Google::Apis::Core::Hashable
        
          # Actor info specific to particular clients.
          # Corresponds to the JSON property `clientSpecificActorInfo`
          # @return [Google::Apis::PlusV1::Comment::Actor::ClientSpecificActorInfo]
          attr_accessor :client_specific_actor_info
        
          # The name of this actor, suitable for display.
          # Corresponds to the JSON property `displayName`
          # @return [String]
          attr_accessor :display_name
        
          # The ID of the actor.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # The image representation of this actor.
          # Corresponds to the JSON property `image`
          # @return [Google::Apis::PlusV1::Comment::Actor::Image]
          attr_accessor :image
        
          # A link to the Person resource for this actor.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          # Verification status of actor.
          # Corresponds to the JSON property `verification`
          # @return [Google::Apis::PlusV1::Comment::Actor::Verification]
          attr_accessor :verification
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @client_specific_actor_info = args[:client_specific_actor_info] unless args[:client_specific_actor_info].nil?
            @display_name = args[:display_name] unless args[:display_name].nil?
            @id = args[:id] unless args[:id].nil?
            @image = args[:image] unless args[:image].nil?
            @url = args[:url] unless args[:url].nil?
            @verification = args[:verification] unless args[:verification].nil?
          end
          
          # Actor info specific to particular clients.
          class ClientSpecificActorInfo
            include Google::Apis::Core::Hashable
          
            # Actor info specific to YouTube clients.
            # Corresponds to the JSON property `youtubeActorInfo`
            # @return [Google::Apis::PlusV1::Comment::Actor::ClientSpecificActorInfo::YoutubeActorInfo]
            attr_accessor :youtube_actor_info
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @youtube_actor_info = args[:youtube_actor_info] unless args[:youtube_actor_info].nil?
            end
            
            # Actor info specific to YouTube clients.
            class YoutubeActorInfo
              include Google::Apis::Core::Hashable
            
              # ID of the YouTube channel owned by the Actor.
              # Corresponds to the JSON property `channelId`
              # @return [String]
              attr_accessor :channel_id
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @channel_id = args[:channel_id] unless args[:channel_id].nil?
              end
            end
          end
          
          # The image representation of this actor.
          class Image
            include Google::Apis::Core::Hashable
          
            # The URL of the actor's profile photo. To resize the image and crop it to a
            # square, append the query string ?sz=x, where x is the dimension in pixels of
            # each side.
            # Corresponds to the JSON property `url`
            # @return [String]
            attr_accessor :url
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @url = args[:url] unless args[:url].nil?
            end
          end
          
          # Verification status of actor.
          class Verification
            include Google::Apis::Core::Hashable
          
            # Verification for one-time or manual processes.
            # Corresponds to the JSON property `adHocVerified`
            # @return [String]
            attr_accessor :ad_hoc_verified
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @ad_hoc_verified = args[:ad_hoc_verified] unless args[:ad_hoc_verified].nil?
            end
          end
        end
        
        # 
        class InReplyTo
          include Google::Apis::Core::Hashable
        
          # The ID of the activity.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # The URL of the activity.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @id = args[:id] unless args[:id].nil?
            @url = args[:url] unless args[:url].nil?
          end
        end
        
        # The object of this comment.
        class Object
          include Google::Apis::Core::Hashable
        
          # The HTML-formatted content, suitable for display.
          # Corresponds to the JSON property `content`
          # @return [String]
          attr_accessor :content
        
          # The object type of this comment. Possible values are:
          # - "comment" - A comment in reply to an activity.
          # Corresponds to the JSON property `objectType`
          # @return [String]
          attr_accessor :object_type
        
          # The content (text) as provided by the author, stored without any HTML
          # formatting. When creating or updating a comment, this value must be supplied
          # as plain text in the request.
          # Corresponds to the JSON property `originalContent`
          # @return [String]
          attr_accessor :original_content
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @content = args[:content] unless args[:content].nil?
            @object_type = args[:object_type] unless args[:object_type].nil?
            @original_content = args[:original_content] unless args[:original_content].nil?
          end
        end
        
        # People who +1'd this comment.
        class Plusoners
          include Google::Apis::Core::Hashable
        
          # Total number of people who +1'd this comment.
          # Corresponds to the JSON property `totalItems`
          # @return [Fixnum]
          attr_accessor :total_items
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @total_items = args[:total_items] unless args[:total_items].nil?
          end
        end
      end
      
      # 
      class CommentFeed
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The ID of this collection of comments.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The comments in this page of results.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::PlusV1::Comment>]
        attr_accessor :items
      
        # Identifies this resource as a collection of comments. Value: "plus#commentFeed"
        # .
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to the next page of activities.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The title of this collection of comments.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The time at which this collection of comments was last updated. Formatted as
        # an RFC 3339 timestamp.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @title = args[:title] unless args[:title].nil?
          @updated = args[:updated] unless args[:updated].nil?
        end
      end
      
      # 
      class PeopleFeed
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The people in this page of results. Each item includes the id, displayName,
        # image, and url for the person. To retrieve additional profile data, see the
        # people.get method.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::PlusV1::Person>]
        attr_accessor :items
      
        # Identifies this resource as a collection of people. Value: "plus#peopleFeed".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Link to this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The title of this collection of people.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The total number of people available in this list. The number of people in a
        # response might be smaller due to paging. This might not be set for all
        # collections.
        # Corresponds to the JSON property `totalItems`
        # @return [Fixnum]
        attr_accessor :total_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @title = args[:title] unless args[:title].nil?
          @total_items = args[:total_items] unless args[:total_items].nil?
        end
      end
      
      # 
      class Person
        include Google::Apis::Core::Hashable
      
        # A short biography for this person.
        # Corresponds to the JSON property `aboutMe`
        # @return [String]
        attr_accessor :about_me
      
        # The age range of the person. Valid ranges are 17 or younger, 18 to 20, and 21
        # or older. Age is determined from the user's birthday using Western age
        # reckoning.
        # Corresponds to the JSON property `ageRange`
        # @return [Google::Apis::PlusV1::Person::AgeRange]
        attr_accessor :age_range
      
        # The person's date of birth, represented as YYYY-MM-DD.
        # Corresponds to the JSON property `birthday`
        # @return [String]
        attr_accessor :birthday
      
        # The "bragging rights" line of this person.
        # Corresponds to the JSON property `braggingRights`
        # @return [String]
        attr_accessor :bragging_rights
      
        # For followers who are visible, the number of people who have added this person
        # or page to a circle.
        # Corresponds to the JSON property `circledByCount`
        # @return [Fixnum]
        attr_accessor :circled_by_count
      
        # The cover photo content.
        # Corresponds to the JSON property `cover`
        # @return [Google::Apis::PlusV1::Person::Cover]
        attr_accessor :cover
      
        # (this field is not currently used)
        # Corresponds to the JSON property `currentLocation`
        # @return [String]
        attr_accessor :current_location
      
        # The name of this person, which is suitable for display.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The hosted domain name for the user's Google Apps account. For instance,
        # example.com. The plus.profile.emails.read or email scope is needed to get this
        # domain name.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # A list of email addresses that this person has, including their Google account
        # email address, and the public verified email addresses on their Google+
        # profile. The plus.profile.emails.read scope is needed to retrieve these email
        # addresses, or the email scope can be used to retrieve just the Google account
        # email address.
        # Corresponds to the JSON property `emails`
        # @return [Array<Google::Apis::PlusV1::Person::Email>]
        attr_accessor :emails
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The person's gender. Possible values include, but are not limited to, the
        # following values:
        # - "male" - Male gender.
        # - "female" - Female gender.
        # - "other" - Other.
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        # The ID of this person.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The representation of the person's profile photo.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::PlusV1::Person::Image]
        attr_accessor :image
      
        # Whether this user has signed up for Google+.
        # Corresponds to the JSON property `isPlusUser`
        # @return [Boolean]
        attr_accessor :is_plus_user
        alias_method :is_plus_user?, :is_plus_user
      
        # Identifies this resource as a person. Value: "plus#person".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The user's preferred language for rendering.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # An object representation of the individual components of a person's name.
        # Corresponds to the JSON property `name`
        # @return [Google::Apis::PlusV1::Person::Name]
        attr_accessor :name
      
        # The nickname of this person.
        # Corresponds to the JSON property `nickname`
        # @return [String]
        attr_accessor :nickname
      
        # Type of person within Google+. Possible values include, but are not limited to,
        # the following values:
        # - "person" - represents an actual person.
        # - "page" - represents a page.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # The occupation of this person.
        # Corresponds to the JSON property `occupation`
        # @return [String]
        attr_accessor :occupation
      
        # A list of current or past organizations with which this person is associated.
        # Corresponds to the JSON property `organizations`
        # @return [Array<Google::Apis::PlusV1::Person::Organization>]
        attr_accessor :organizations
      
        # A list of places where this person has lived.
        # Corresponds to the JSON property `placesLived`
        # @return [Array<Google::Apis::PlusV1::Person::PlacesLived>]
        attr_accessor :places_lived
      
        # If a Google+ Page, the number of people who have +1'd this page.
        # Corresponds to the JSON property `plusOneCount`
        # @return [Fixnum]
        attr_accessor :plus_one_count
      
        # The person's relationship status. Possible values include, but are not limited
        # to, the following values:
        # - "single" - Person is single.
        # - "in_a_relationship" - Person is in a relationship.
        # - "engaged" - Person is engaged.
        # - "married" - Person is married.
        # - "its_complicated" - The relationship is complicated.
        # - "open_relationship" - Person is in an open relationship.
        # - "widowed" - Person is widowed.
        # - "in_domestic_partnership" - Person is in a domestic partnership.
        # - "in_civil_union" - Person is in a civil union.
        # Corresponds to the JSON property `relationshipStatus`
        # @return [String]
        attr_accessor :relationship_status
      
        # The person's skills.
        # Corresponds to the JSON property `skills`
        # @return [String]
        attr_accessor :skills
      
        # The brief description (tagline) of this person.
        # Corresponds to the JSON property `tagline`
        # @return [String]
        attr_accessor :tagline
      
        # The URL of this person's profile.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # A list of URLs for this person.
        # Corresponds to the JSON property `urls`
        # @return [Array<Google::Apis::PlusV1::Person::Url>]
        attr_accessor :urls
      
        # Whether the person or Google+ Page has been verified.
        # Corresponds to the JSON property `verified`
        # @return [Boolean]
        attr_accessor :verified
        alias_method :verified?, :verified
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @about_me = args[:about_me] unless args[:about_me].nil?
          @age_range = args[:age_range] unless args[:age_range].nil?
          @birthday = args[:birthday] unless args[:birthday].nil?
          @bragging_rights = args[:bragging_rights] unless args[:bragging_rights].nil?
          @circled_by_count = args[:circled_by_count] unless args[:circled_by_count].nil?
          @cover = args[:cover] unless args[:cover].nil?
          @current_location = args[:current_location] unless args[:current_location].nil?
          @display_name = args[:display_name] unless args[:display_name].nil?
          @domain = args[:domain] unless args[:domain].nil?
          @emails = args[:emails] unless args[:emails].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @gender = args[:gender] unless args[:gender].nil?
          @id = args[:id] unless args[:id].nil?
          @image = args[:image] unless args[:image].nil?
          @is_plus_user = args[:is_plus_user] unless args[:is_plus_user].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @language = args[:language] unless args[:language].nil?
          @name = args[:name] unless args[:name].nil?
          @nickname = args[:nickname] unless args[:nickname].nil?
          @object_type = args[:object_type] unless args[:object_type].nil?
          @occupation = args[:occupation] unless args[:occupation].nil?
          @organizations = args[:organizations] unless args[:organizations].nil?
          @places_lived = args[:places_lived] unless args[:places_lived].nil?
          @plus_one_count = args[:plus_one_count] unless args[:plus_one_count].nil?
          @relationship_status = args[:relationship_status] unless args[:relationship_status].nil?
          @skills = args[:skills] unless args[:skills].nil?
          @tagline = args[:tagline] unless args[:tagline].nil?
          @url = args[:url] unless args[:url].nil?
          @urls = args[:urls] unless args[:urls].nil?
          @verified = args[:verified] unless args[:verified].nil?
        end
        
        # The age range of the person. Valid ranges are 17 or younger, 18 to 20, and 21
        # or older. Age is determined from the user's birthday using Western age
        # reckoning.
        class AgeRange
          include Google::Apis::Core::Hashable
        
          # The age range's upper bound, if any. Possible values include, but are not
          # limited to, the following:
          # - "17" - for age 17
          # - "20" - for age 20
          # Corresponds to the JSON property `max`
          # @return [Fixnum]
          attr_accessor :max
        
          # The age range's lower bound, if any. Possible values include, but are not
          # limited to, the following:
          # - "21" - for age 21
          # - "18" - for age 18
          # Corresponds to the JSON property `min`
          # @return [Fixnum]
          attr_accessor :min
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @max = args[:max] unless args[:max].nil?
            @min = args[:min] unless args[:min].nil?
          end
        end
        
        # The cover photo content.
        class Cover
          include Google::Apis::Core::Hashable
        
          # Extra information about the cover photo.
          # Corresponds to the JSON property `coverInfo`
          # @return [Google::Apis::PlusV1::Person::Cover::CoverInfo]
          attr_accessor :cover_info
        
          # The person's primary cover image.
          # Corresponds to the JSON property `coverPhoto`
          # @return [Google::Apis::PlusV1::Person::Cover::CoverPhoto]
          attr_accessor :cover_photo
        
          # The layout of the cover art. Possible values include, but are not limited to,
          # the following values:
          # - "banner" - One large image banner.
          # Corresponds to the JSON property `layout`
          # @return [String]
          attr_accessor :layout
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @cover_info = args[:cover_info] unless args[:cover_info].nil?
            @cover_photo = args[:cover_photo] unless args[:cover_photo].nil?
            @layout = args[:layout] unless args[:layout].nil?
          end
          
          # Extra information about the cover photo.
          class CoverInfo
            include Google::Apis::Core::Hashable
          
            # The difference between the left position of the cover image and the actual
            # displayed cover image. Only valid for banner layout.
            # Corresponds to the JSON property `leftImageOffset`
            # @return [Fixnum]
            attr_accessor :left_image_offset
          
            # The difference between the top position of the cover image and the actual
            # displayed cover image. Only valid for banner layout.
            # Corresponds to the JSON property `topImageOffset`
            # @return [Fixnum]
            attr_accessor :top_image_offset
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @left_image_offset = args[:left_image_offset] unless args[:left_image_offset].nil?
              @top_image_offset = args[:top_image_offset] unless args[:top_image_offset].nil?
            end
          end
          
          # The person's primary cover image.
          class CoverPhoto
            include Google::Apis::Core::Hashable
          
            # The height of the image.
            # Corresponds to the JSON property `height`
            # @return [Fixnum]
            attr_accessor :height
          
            # The URL of the image.
            # Corresponds to the JSON property `url`
            # @return [String]
            attr_accessor :url
          
            # The width of the image.
            # Corresponds to the JSON property `width`
            # @return [Fixnum]
            attr_accessor :width
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @height = args[:height] unless args[:height].nil?
              @url = args[:url] unless args[:url].nil?
              @width = args[:width] unless args[:width].nil?
            end
          end
        end
        
        # 
        class Email
          include Google::Apis::Core::Hashable
        
          # The type of address. Possible values include, but are not limited to, the
          # following values:
          # - "account" - Google account email address.
          # - "home" - Home email address.
          # - "work" - Work email address.
          # - "other" - Other.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          # The email address.
          # Corresponds to the JSON property `value`
          # @return [String]
          attr_accessor :value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @type = args[:type] unless args[:type].nil?
            @value = args[:value] unless args[:value].nil?
          end
        end
        
        # The representation of the person's profile photo.
        class Image
          include Google::Apis::Core::Hashable
        
          # Whether the person's profile photo is the default one
          # Corresponds to the JSON property `isDefault`
          # @return [Boolean]
          attr_accessor :is_default
          alias_method :is_default?, :is_default
        
          # The URL of the person's profile photo. To resize the image and crop it to a
          # square, append the query string ?sz=x, where x is the dimension in pixels of
          # each side.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @is_default = args[:is_default] unless args[:is_default].nil?
            @url = args[:url] unless args[:url].nil?
          end
        end
        
        # An object representation of the individual components of a person's name.
        class Name
          include Google::Apis::Core::Hashable
        
          # The family name (last name) of this person.
          # Corresponds to the JSON property `familyName`
          # @return [String]
          attr_accessor :family_name
        
          # The full name of this person, including middle names, suffixes, etc.
          # Corresponds to the JSON property `formatted`
          # @return [String]
          attr_accessor :formatted
        
          # The given name (first name) of this person.
          # Corresponds to the JSON property `givenName`
          # @return [String]
          attr_accessor :given_name
        
          # The honorific prefixes (such as "Dr." or "Mrs.") for this person.
          # Corresponds to the JSON property `honorificPrefix`
          # @return [String]
          attr_accessor :honorific_prefix
        
          # The honorific suffixes (such as "Jr.") for this person.
          # Corresponds to the JSON property `honorificSuffix`
          # @return [String]
          attr_accessor :honorific_suffix
        
          # The middle name of this person.
          # Corresponds to the JSON property `middleName`
          # @return [String]
          attr_accessor :middle_name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @family_name = args[:family_name] unless args[:family_name].nil?
            @formatted = args[:formatted] unless args[:formatted].nil?
            @given_name = args[:given_name] unless args[:given_name].nil?
            @honorific_prefix = args[:honorific_prefix] unless args[:honorific_prefix].nil?
            @honorific_suffix = args[:honorific_suffix] unless args[:honorific_suffix].nil?
            @middle_name = args[:middle_name] unless args[:middle_name].nil?
          end
        end
        
        # 
        class Organization
          include Google::Apis::Core::Hashable
        
          # The department within the organization. Deprecated.
          # Corresponds to the JSON property `department`
          # @return [String]
          attr_accessor :department
        
          # A short description of the person's role in this organization. Deprecated.
          # Corresponds to the JSON property `description`
          # @return [String]
          attr_accessor :description
        
          # The date that the person left this organization.
          # Corresponds to the JSON property `endDate`
          # @return [String]
          attr_accessor :end_date
        
          # The location of this organization. Deprecated.
          # Corresponds to the JSON property `location`
          # @return [String]
          attr_accessor :location
        
          # The name of the organization.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # If "true", indicates this organization is the person's primary one, which is
          # typically interpreted as the current one.
          # Corresponds to the JSON property `primary`
          # @return [Boolean]
          attr_accessor :primary
          alias_method :primary?, :primary
        
          # The date that the person joined this organization.
          # Corresponds to the JSON property `startDate`
          # @return [String]
          attr_accessor :start_date
        
          # The person's job title or role within the organization.
          # Corresponds to the JSON property `title`
          # @return [String]
          attr_accessor :title
        
          # The type of organization. Possible values include, but are not limited to, the
          # following values:
          # - "work" - Work.
          # - "school" - School.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @department = args[:department] unless args[:department].nil?
            @description = args[:description] unless args[:description].nil?
            @end_date = args[:end_date] unless args[:end_date].nil?
            @location = args[:location] unless args[:location].nil?
            @name = args[:name] unless args[:name].nil?
            @primary = args[:primary] unless args[:primary].nil?
            @start_date = args[:start_date] unless args[:start_date].nil?
            @title = args[:title] unless args[:title].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
        
        # 
        class PlacesLived
          include Google::Apis::Core::Hashable
        
          # If "true", this place of residence is this person's primary residence.
          # Corresponds to the JSON property `primary`
          # @return [Boolean]
          attr_accessor :primary
          alias_method :primary?, :primary
        
          # A place where this person has lived. For example: "Seattle, WA", "Near Toronto"
          # .
          # Corresponds to the JSON property `value`
          # @return [String]
          attr_accessor :value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @primary = args[:primary] unless args[:primary].nil?
            @value = args[:value] unless args[:value].nil?
          end
        end
        
        # 
        class Url
          include Google::Apis::Core::Hashable
        
          # The label of the URL.
          # Corresponds to the JSON property `label`
          # @return [String]
          attr_accessor :label
        
          # The type of URL. Possible values include, but are not limited to, the
          # following values:
          # - "otherProfile" - URL for another profile.
          # - "contributor" - URL to a site for which this person is a contributor.
          # - "website" - URL for this Google+ Page's primary website.
          # - "other" - Other URL.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          # The URL value.
          # Corresponds to the JSON property `value`
          # @return [String]
          attr_accessor :value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @label = args[:label] unless args[:label].nil?
            @type = args[:type] unless args[:type].nil?
            @value = args[:value] unless args[:value].nil?
          end
        end
      end
      
      # 
      class Place
        include Google::Apis::Core::Hashable
      
        # The physical address of the place.
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::PlusV1::Place::Address]
        attr_accessor :address
      
        # The display name of the place.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The id of the place.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this resource as a place. Value: "plus#place".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The position of the place.
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::PlusV1::Place::Position]
        attr_accessor :position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] unless args[:address].nil?
          @display_name = args[:display_name] unless args[:display_name].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @position = args[:position] unless args[:position].nil?
        end
        
        # The physical address of the place.
        class Address
          include Google::Apis::Core::Hashable
        
          # The formatted address for display.
          # Corresponds to the JSON property `formatted`
          # @return [String]
          attr_accessor :formatted
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @formatted = args[:formatted] unless args[:formatted].nil?
          end
        end
        
        # The position of the place.
        class Position
          include Google::Apis::Core::Hashable
        
          # The latitude of this position.
          # Corresponds to the JSON property `latitude`
          # @return [Float]
          attr_accessor :latitude
        
          # The longitude of this position.
          # Corresponds to the JSON property `longitude`
          # @return [Float]
          attr_accessor :longitude
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @latitude = args[:latitude] unless args[:latitude].nil?
            @longitude = args[:longitude] unless args[:longitude].nil?
          end
        end
      end
      
      # 
      class PlusAclentryResource
        include Google::Apis::Core::Hashable
      
        # A descriptive name for this entry. Suitable for display.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The ID of the entry. For entries of type "person" or "circle", this is the ID
        # of the resource. For other types, this property is not set.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of entry describing to whom access is granted. Possible values are:
        # - "person" - Access to an individual.
        # - "circle" - Access to members of a circle.
        # - "myCircles" - Access to members of all the person's circles.
        # - "extendedCircles" - Access to members of all the person's circles, plus all
        # of the people in their circles.
        # - "domain" - Access to members of the person's Google Apps domain.
        # - "public" - Access to anyone on the web.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] unless args[:display_name].nil?
          @id = args[:id] unless args[:id].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
    end
  end
end
