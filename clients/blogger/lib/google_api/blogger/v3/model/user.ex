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

defmodule GoogleApi.Blogger.V3.Model.User do
  @moduledoc """


  ## Attributes

  - about (String.t): Profile summary information. Defaults to: `null`.
  - blogs (UserBlogs):  Defaults to: `null`.
  - created (DateTime.t): The timestamp of when this profile was created, in seconds since epoch. Defaults to: `null`.
  - displayName (String.t): The display name. Defaults to: `null`.
  - id (String.t): The identifier for this User. Defaults to: `null`.
  - kind (String.t): The kind of this entity. Always blogger#user Defaults to: `null`.
  - locale (UserLocale):  Defaults to: `null`.
  - selfLink (String.t): The API REST URL to fetch this resource from. Defaults to: `null`.
  - url (String.t): The user&#39;s profile page. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :about => any(),
          :blogs => GoogleApi.Blogger.V3.Model.UserBlogs.t(),
          :created => DateTime.t(),
          :displayName => any(),
          :id => any(),
          :kind => any(),
          :locale => GoogleApi.Blogger.V3.Model.UserLocale.t(),
          :selfLink => any(),
          :url => any()
        }

  field(:about)
  field(:blogs, as: GoogleApi.Blogger.V3.Model.UserBlogs)
  field(:created, as: DateTime)
  field(:displayName)
  field(:id)
  field(:kind)
  field(:locale, as: GoogleApi.Blogger.V3.Model.UserLocale)
  field(:selfLink)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.User do
  def decode(value, options) do
    GoogleApi.Blogger.V3.Model.User.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.User do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
