# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ServiceManagement.V1.Api.Operations do
  @moduledoc """
  API calls for all endpoints tagged `Operations`.
  """

  alias GoogleApi.ServiceManagement.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets the latest state of a long-running operation.  Clients can use this method to poll the operation result at intervals as recommended by the API service.

  ## Parameters

  - connection (GoogleApi.ServiceManagement.V1.Connection): Connection to server
  - name (String.t): The name of the operation resource.
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.

  ## Returns

  {:ok, %GoogleApi.ServiceManagement.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec servicemanagement_operations_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.ServiceManagement.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def servicemanagement_operations_get(connection, name, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ServiceManagement.V1.Model.Operation{}])
  end

  @doc """
  Lists service operations that match the specified filter in the request.

  ## Parameters

  - connection (GoogleApi.ServiceManagement.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :filter (String.t): A string for filtering Operations.   The following filter fields are supported&amp;#58;    * serviceName&amp;#58; Required. Only &#x60;&#x3D;&#x60; operator is allowed.   * startTime&amp;#58; The time this job was started, in ISO 8601 format.     Allowed operators are &#x60;&gt;&#x3D;&#x60;,  &#x60;&gt;&#x60;, &#x60;&lt;&#x3D;&#x60;, and &#x60;&lt;&#x60;.   * status&amp;#58; Can be &#x60;done&#x60;, &#x60;in_progress&#x60;, or &#x60;failed&#x60;. Allowed     operators are &#x60;&#x3D;&#x60;, and &#x60;!&#x3D;&#x60;.    Filter expression supports conjunction (AND) and disjunction (OR)   logical operators. However, the serviceName restriction must be at the   top-level and can only be combined with other restrictions via the AND   logical operator.    Examples&amp;#58;    * &#x60;serviceName&#x3D;{some-service}.googleapis.com&#x60;   * &#x60;serviceName&#x3D;{some-service}.googleapis.com AND startTime&gt;&#x3D;\&quot;2017-02-01\&quot;&#x60;   * &#x60;serviceName&#x3D;{some-service}.googleapis.com AND status&#x3D;done&#x60;   * &#x60;serviceName&#x3D;{some-service}.googleapis.com AND (status&#x3D;done OR startTime&gt;&#x3D;\&quot;2017-02-01\&quot;)&#x60;
    - :name (String.t): Not used.
    - :pageToken (String.t): The standard list page token.
    - :pageSize (integer()): The maximum number of operations to return. If unspecified, defaults to 50. The maximum value is 100.

  ## Returns

  {:ok, %GoogleApi.ServiceManagement.V1.Model.ListOperationsResponse{}} on success
  {:error, info} on failure
  """
  @spec servicemanagement_operations_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.ServiceManagement.V1.Model.ListOperationsResponse.t()}
          | {:error, Tesla.Env.t()}
  def servicemanagement_operations_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :filter => :query,
      :name => :query,
      :pageToken => :query,
      :pageSize => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/operations")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceManagement.V1.Model.ListOperationsResponse{}]
    )
  end
end
