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

defmodule GoogleApi.Blogger.V3.Model.Page do
  @moduledoc """


  ## Attributes

  - author (PageAuthor):  Defaults to: `null`.
  - blog (PageBlog):  Defaults to: `null`.
  - content (String.t): The body content of this Page, in HTML. Defaults to: `null`.
  - etag (String.t): Etag of the resource. Defaults to: `null`.
  - id (String.t): The identifier for this resource. Defaults to: `null`.
  - kind (String.t): The kind of this entity. Always blogger#page Defaults to: `null`.
  - published (DateTime.t): RFC 3339 date-time when this Page was published. Defaults to: `null`.
  - selfLink (String.t): The API REST URL to fetch this resource from. Defaults to: `null`.
  - status (String.t): The status of the page for admin resources (either LIVE or DRAFT). Defaults to: `null`.
  - title (String.t): The title of this entity. This is the name displayed in the Admin user interface. Defaults to: `null`.
  - updated (DateTime.t): RFC 3339 date-time when this Page was last updated. Defaults to: `null`.
  - url (String.t): The URL that this Page is displayed at. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :author => GoogleApi.Blogger.V3.Model.PageAuthor.t(),
          :blog => GoogleApi.Blogger.V3.Model.PageBlog.t(),
          :content => any(),
          :etag => any(),
          :id => any(),
          :kind => any(),
          :published => DateTime.t(),
          :selfLink => any(),
          :status => any(),
          :title => any(),
          :updated => DateTime.t(),
          :url => any()
        }

  field(:author, as: GoogleApi.Blogger.V3.Model.PageAuthor)
  field(:blog, as: GoogleApi.Blogger.V3.Model.PageBlog)
  field(:content)
  field(:etag)
  field(:id)
  field(:kind)
  field(:published, as: DateTime)
  field(:selfLink)
  field(:status)
  field(:title)
  field(:updated, as: DateTime)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.Page do
  def decode(value, options) do
    GoogleApi.Blogger.V3.Model.Page.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.Page do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
