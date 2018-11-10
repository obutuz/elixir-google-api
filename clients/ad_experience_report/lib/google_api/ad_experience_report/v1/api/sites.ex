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

defmodule GoogleApi.AdExperienceReport.V1.Api.Sites do
  @moduledoc """
  API calls for all endpoints tagged `Sites`.
  """

  alias GoogleApi.AdExperienceReport.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets a summary of the ad experience rating of a site.

  ## Parameters

  - connection (GoogleApi.AdExperienceReport.V1.Connection): Connection to server
  - sites_id (String.t): Part of &#x60;name&#x60;. The required site name. It should be the site property whose ad experiences may have been reviewed, and it should be URL-encoded. For example, sites/https%3A%2F%2Fwww.google.com. The server will return an error of BAD_REQUEST if this field is not filled in. Note that if the site property is not yet verified in Search Console, the reportUrl field returned by the API will lead to the verification page, prompting the user to go through that process before they can gain access to the Ad Experience Report.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.

  ## Returns

  {:ok, %GoogleApi.AdExperienceReport.V1.Model.SiteSummaryResponse{}} on success
  {:error, info} on failure
  """
  @spec adexperiencereport_sites_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdExperienceReport.V1.Model.SiteSummaryResponse.t()}
          | {:error, Tesla.Env.t()}
  def adexperiencereport_sites_get(connection, sites_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/sites/{sitesId}", %{
        "sitesId" => URI.encode_www_form(sites_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AdExperienceReport.V1.Model.SiteSummaryResponse{}]
    )
  end
end
