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

defmodule GoogleApi.PlayCustomApp.V1.Api.Accounts do
  @moduledoc """
  API calls for all endpoints tagged `Accounts`.
  """

  alias GoogleApi.PlayCustomApp.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Create and publish a new custom app.

  ## Parameters

  - connection (GoogleApi.PlayCustomApp.V1.Connection): Connection to server
  - account (String.t): Developer account ID.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (CustomApp): 

  ## Returns

  {:ok, %GoogleApi.PlayCustomApp.V1.Model.CustomApp{}} on success
  {:error, info} on failure
  """
  @spec playcustomapp_accounts_custom_apps_create(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.PlayCustomApp.V1.Model.CustomApp.t()} | {:error, Tesla.Env.t()}
  def playcustomapp_accounts_custom_apps_create(
        connection,
        account,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/playcustomapp/v1/accounts/{account}/customApps", %{
        "account" => URI.encode_www_form(account)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.PlayCustomApp.V1.Model.CustomApp{}])
  end

  @doc """
  Create and publish a new custom app.

  ## Parameters

  - connection (GoogleApi.PlayCustomApp.V1.Connection): Connection to server
  - account (String.t): Developer account ID.
  - upload_type (String.t): Upload type. Must be \&quot;resumable\&quot;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (CustomApp): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec playcustomapp_accounts_custom_apps_create_resumable(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def playcustomapp_accounts_custom_apps_create_resumable(
        connection,
        account,
        upload_type,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/resumable/upload/playcustomapp/v1/accounts/{account}/customApps", %{
        "account" => URI.encode_www_form(account)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Create and publish a new custom app.

  ## Parameters

  - connection (GoogleApi.PlayCustomApp.V1.Connection): Connection to server
  - account (String.t): Developer account ID.
  - upload_type (String.t): Upload type. Must be \&quot;multipart\&quot;.
  - metadata (CustomApp): CustomApp metadata.
  - data (String.t): The file to upload.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.PlayCustomApp.V1.Model.CustomApp{}} on success
  {:error, info} on failure
  """
  @spec playcustomapp_accounts_custom_apps_create_simple(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          GoogleApi.PlayCustomApp.V1.Model.CustomApp.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.PlayCustomApp.V1.Model.CustomApp.t()} | {:error, Tesla.Env.t()}
  def playcustomapp_accounts_custom_apps_create_simple(
        connection,
        account,
        upload_type,
        metadata,
        data,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/upload/playcustomapp/v1/accounts/{account}/customApps", %{
        "account" => URI.encode_www_form(account)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:body, :metadata, metadata)
      |> Request.add_param(:file, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.PlayCustomApp.V1.Model.CustomApp{}])
  end
end