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

defmodule GoogleApi.Sheets.V4.Model.ExtendedValue do
  @moduledoc """
  The kinds of value that a cell in a spreadsheet can have.

  ## Attributes

  - boolValue (boolean()): Represents a boolean value. Defaults to: `null`.
  - errorValue (ErrorValue): Represents an error. This field is read-only. Defaults to: `null`.
  - formulaValue (String.t): Represents a formula. Defaults to: `null`.
  - numberValue (float()): Represents a double value. Note: Dates, Times and DateTimes are represented as doubles in \&quot;serial number\&quot; format. Defaults to: `null`.
  - stringValue (String.t): Represents a string value. Leading single quotes are not included. For example, if the user typed &#x60;&#39;123&#x60; into the UI, this would be represented as a &#x60;stringValue&#x60; of &#x60;\&quot;123\&quot;&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => any(),
          :errorValue => GoogleApi.Sheets.V4.Model.ErrorValue.t(),
          :formulaValue => any(),
          :numberValue => any(),
          :stringValue => any()
        }

  field(:boolValue)
  field(:errorValue, as: GoogleApi.Sheets.V4.Model.ErrorValue)
  field(:formulaValue)
  field(:numberValue)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.ExtendedValue do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.ExtendedValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.ExtendedValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
