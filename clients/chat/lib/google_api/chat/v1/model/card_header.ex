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

defmodule GoogleApi.Chat.V1.Model.CardHeader do
  @moduledoc """


  ## Attributes

  - imageStyle (String.t): The image&#39;s type (e.g. square border or circular border). Defaults to: `null`.
    - Enum - one of [IMAGE_STYLE_UNSPECIFIED, IMAGE, AVATAR]
  - imageUrl (String.t): The URL of the image in the card header. Defaults to: `null`.
  - subtitle (String.t): The subtitle of the card header. Defaults to: `null`.
  - title (String.t): The title must be specified. The header has a fixed height: if both a title and subtitle is specified, each will take up 1 line. If only the title is specified, it will take up both lines. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :imageStyle => any(),
          :imageUrl => any(),
          :subtitle => any(),
          :title => any()
        }

  field(:imageStyle)
  field(:imageUrl)
  field(:subtitle)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.CardHeader do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.CardHeader.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.CardHeader do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
