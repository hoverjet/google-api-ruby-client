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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module CloudresourcemanagerV1beta1
      # Google Cloud Resource Manager API
      #
      # The Google Cloud Resource Manager API provides methods for creating, reading,
      #  and updating project metadata.
      #
      # @example
      #    require 'google/apis/cloudresourcemanager_v1beta1'
      #
      #    Cloudresourcemanager = Google::Apis::CloudresourcemanagerV1beta1 # Alias the module
      #    service = Cloudresourcemanager::CloudresourcemanagerService.new
      #
      # @see https://cloud.google.com/resource-manager
      class CloudresourcemanagerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudresourcemanager.googleapis.com/', '')
        end
        
        # Creates a Project resource. Initially, the Project resource is owned by its
        # creator exclusively. The creator can later grant permission to others to read
        # or update the Project. Several APIs are activated automatically for the
        # Project, including Google Cloud Storage.
        # @param [Google::Apis::CloudresourcemanagerV1beta1::Project] project_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Project] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Project]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project(project_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/projects', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1beta1::Project::Representation
          command.request_object = project_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Project::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Project
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Projects that are visible to the user and satisfy the specified filter.
        # This method returns Projects in an unspecified order. New Projects do not
        # necessarily appear at the end of the list.
        # @param [String] page_token
        #   A pagination token returned from a previous call to ListProjects that
        #   indicates from where listing should continue. Optional.
        # @param [Fixnum] page_size
        #   The maximum number of Projects to return in the response. The server can
        #   return fewer Projects than requested. If unspecified, server picks an
        #   appropriate default. Optional.
        # @param [String] filter
        #   An expression for filtering the results of the request. Filter rules are case
        #   insensitive. The fields eligible for filtering are: + `name` + `id` + labels.
        #   key where *key* is the name of a label Some examples of using labels as
        #   filters: |Filter|Description| |------|-----------| |name:*|The project has a
        #   name.| |name:Howl|The project's name is `Howl` or `howl`.| |name:HOWL|
        #   Equivalent to above.| |NAME:howl|Equivalent to above.| |labels.color:*|The
        #   project has the label `color`.| |labels.color:red|The project's label `color`
        #   has the value `red`.| |labels.color:red label.size:big|The project's label `
        #   color` has the value `red` and its label `size` has the value `big`. Optional.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::ListProjectsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::ListProjectsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_projects(page_token: nil, page_size: nil, filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/projects', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::ListProjectsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::ListProjectsResponse
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the Project identified by the specified `project_id` (for example, `
        # my-project-123`). The caller must have read permissions for this Project.
        # @param [String] project_id
        #   The Project ID (for example, `my-project-123`). Required.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Project] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Project]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project(project_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/projects/{projectId}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Project::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Project
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the attributes of the Project identified by the specified `project_id`
        # (for example, `my-project-123`). The caller must have modify permissions for
        # this Project.
        # @param [String] project_id
        #   The project ID (for example, `my-project-123`). Required.
        # @param [Google::Apis::CloudresourcemanagerV1beta1::Project] project_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Project] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Project]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project(project_id, project_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v1beta1/projects/{projectId}', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1beta1::Project::Representation
          command.request_object = project_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Project::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Project
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Project identified by the specified `project_id` (for example, `my-
        # project-123`) for deletion. This method will only affect the Project if the
        # following criteria are met: + The Project does not have a billing account
        # associated with it. + The Project has a lifecycle state of ACTIVE. This method
        # changes the Project's lifecycle state from ACTIVE to DELETE_REQUESTED. The
        # deletion starts at an unspecified time, at which point the lifecycle state
        # changes to DELETE_IN_PROGRESS. Until the deletion completes, you can check the
        # lifecycle state checked by retrieving the Project with GetProject, and the
        # Project remains visible to ListProjects. However, you cannot update the
        # project. After the deletion completes, the Project is not retrievable by the
        # GetProject and ListProjects methods. The caller must have modify permissions
        # for this Project.
        # @param [String] project_id
        #   The Project ID (for example, `foo-bar-123`). Required.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project(project_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1beta1/projects/{projectId}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Empty
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores the Project identified by the specified `project_id` (for example, `
        # my-project-123`). You can only use this method for a Project that has a
        # lifecycle state of DELETE_REQUESTED. After deletion starts, as indicated by a
        # lifecycle state of DELETE_IN_PROGRESS, the Project cannot be restored. The
        # caller must have modify permissions for this Project.
        # @param [String] project_id
        #   The project ID (for example, `foo-bar-123`). Required.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_project(project_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/projects/{projectId}:undelete', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Empty
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the IAM access control policy for the specified Project. Permission is
        # denied if the policy or the resource does not exist.
        # @param [String] resource
        #   REQUIRED: The resource for which policy is being requested. `resource` is
        #   usually specified as a path, such as, `projects/`project`/zones/`zone`/disks/`
        #   disk``. The format for the path specified in this value is resource specific
        #   and is specified in the `getIamPolicy` documentation.
        # @param [Google::Apis::CloudresourcemanagerV1beta1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/projects/{resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1beta1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Policy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM access control policy for the specified Project. Replaces any
        # existing policy. The following constraints apply when using `setIamPolicy()`: +
        # Project currently supports only `user:`emailid`` and `serviceAccount:`emailid`
        # ` members in a `Binding` of a `Policy`. + To be added as an `owner`, a user
        # must be invited via Cloud Platform console and must accept the invitation. +
        # Members cannot be added to more than one role in the same policy. + There must
        # be at least one owner who has accepted the Terms of Service (ToS) agreement in
        # the policy. Calling `setIamPolicy()` to to remove the last ToS-accepted owner
        # from the policy will fail. + Calling this method requires enabling the App
        # Engine Admin API. Note: Removing service accounts from policies or changing
        # their roles can render services completely inoperable. It is important to
        # understand how the service account is being used before removing or updating
        # its roles.
        # @param [String] resource
        #   REQUIRED: The resource for which policy is being specified. `resource` is
        #   usually specified as a path, such as, `projects/`project`/zones/`zone`/disks/`
        #   disk``. The format for the path specified in this value is resource specific
        #   and is specified in the `setIamPolicy` documentation.
        # @param [Google::Apis::CloudresourcemanagerV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/projects/{resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Policy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified Project.
        # @param [String] resource
        #   REQUIRED: The resource for which policy detail is being requested. `resource`
        #   is usually specified as a path, such as, `projects/`project`/zones/`zone`/
        #   disks/`disk``. The format for the path specified in this value is resource
        #   specific and is specified in the `testIamPermissions` documentation. rpc.
        # @param [Google::Apis::CloudresourcemanagerV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/projects/{resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Organization resources that are visible to the user and satisfy the
        # specified filter. This method returns Organizations in an unspecified order.
        # New Organizations do not necessarily appear at the end of the list.
        # @param [Fixnum] page_size
        #   The maximum number of Organizations to return in the response. This field is
        #   optional.
        # @param [String] page_token
        #   A pagination token returned from a previous call to `ListOrganizations` that
        #   indicates from where listing should continue. This field is optional.
        # @param [String] filter
        #   An optional query string used to filter the Organizations to return in the
        #   response. Filter rules are case-insensitive. Organizations may be filtered by `
        #   owner.directoryCustomerId` or by `domain`, where the domain is a Google for
        #   Work domain, for example: |Filter|Description| |------|-----------| |owner.
        #   directorycustomerid:123456789|Organizations with `owner.directory_customer_id`
        #   equal to `123456789`.| |domain:google.com|Organizations corresponding to the
        #   domain `google.com`.| This field is optional.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::ListOrganizationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::ListOrganizationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organizations(page_size: nil, page_token: nil, filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/organizations', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::ListOrganizationsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::ListOrganizationsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches an Organization resource identified by the specified `organization_id`.
        # @param [String] organization_id
        #   The id of the Organization resource to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Organization] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Organization]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization(organization_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/organizations/{organizationId}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Organization::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Organization
          command.params['organizationId'] = organization_id unless organization_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an Organization resource identified by the specified `organization_id`.
        # @param [String] organization_id
        #   An immutable id for the Organization that is assigned on creation. This should
        #   be omitted when creating a new Organization. This field is read-only.
        # @param [Google::Apis::CloudresourcemanagerV1beta1::Organization] organization_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Organization] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Organization]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization(organization_id, organization_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v1beta1/organizations/{organizationId}', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1beta1::Organization::Representation
          command.request_object = organization_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Organization::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Organization
          command.params['organizationId'] = organization_id unless organization_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on an Organization resource. Replaces any
        # existing policy.
        # @param [String] resource
        #   REQUIRED: The resource for which policy is being specified. `resource` is
        #   usually specified as a path, such as, `projects/`project`/zones/`zone`/disks/`
        #   disk``. The format for the path specified in this value is resource specific
        #   and is specified in the `setIamPolicy` documentation.
        # @param [Google::Apis::CloudresourcemanagerV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_organization_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/organizations/{resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Policy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for an Organization resource. May be empty if
        # no such policy or resource exists.
        # @param [String] resource
        #   REQUIRED: The resource for which policy is being requested. `resource` is
        #   usually specified as a path, such as, `projects/`project`/zones/`zone`/disks/`
        #   disk``. The format for the path specified in this value is resource specific
        #   and is specified in the `getIamPolicy` documentation.
        # @param [Google::Apis::CloudresourcemanagerV1beta1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/organizations/{resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1beta1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Policy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified Organization.
        # @param [String] resource
        #   REQUIRED: The resource for which policy detail is being requested. `resource`
        #   is usually specified as a path, such as, `projects/`project`/zones/`zone`/
        #   disks/`disk``. The format for the path specified in this value is resource
        #   specific and is specified in the `testIamPermissions` documentation. rpc.
        # @param [Google::Apis::CloudresourcemanagerV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_organization_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/organizations/{resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
