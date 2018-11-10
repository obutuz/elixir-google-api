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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Api.ShortLinks do
  @moduledoc """
  API calls for all endpoints tagged `ShortLinks`.
  """

  alias GoogleApi.FirebaseDynamicLinks.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Creates a short Dynamic Link given either a valid long Dynamic Link or details such as Dynamic Link domain, Android and iOS app information. The created short Dynamic Link will not expire.  Repeated calls with the same long Dynamic Link or Dynamic Link information will produce the same short Dynamic Link.  The Dynamic Link domain in the request must be owned by requester&#39;s Firebase project.

  ## Parameters

  - connection (GoogleApi.FirebaseDynamicLinks.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :body (CreateShortDynamicLinkRequest): 

  ## Returns

  {:ok, %GoogleApi.FirebaseDynamicLinks.V1.Model.CreateShortDynamicLinkResponse{}} on success
  {:error, info} on failure
  """
  @spec firebasedynamiclinks_short_links_create(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.FirebaseDynamicLinks.V1.Model.CreateShortDynamicLinkResponse.t()}
          | {:error, Tesla.Env.t()}
  def firebasedynamiclinks_short_links_create(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :fields => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/shortLinks")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.FirebaseDynamicLinks.V1.Model.CreateShortDynamicLinkResponse{}]
    )
  end
end
