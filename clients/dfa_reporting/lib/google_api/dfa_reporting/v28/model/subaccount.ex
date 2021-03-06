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

defmodule GoogleApi.DFAReporting.V28.Model.Subaccount do
  @moduledoc """
  Contains properties of a Campaign Manager subaccount.

  ## Attributes

  - accountId (String.t): ID of the account that contains this subaccount. This is a read-only field that can be left blank. Defaults to: `null`.
  - availablePermissionIds ([String.t]): IDs of the available user role permissions for this subaccount. Defaults to: `null`.
  - id (String.t): ID of this subaccount. This is a read-only, auto-generated field. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#subaccount\&quot;. Defaults to: `null`.
  - name (String.t): Name of this subaccount. This is a required field. Must be less than 128 characters long and be unique among subaccounts of the same account. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :availablePermissionIds => list(any()),
          :id => any(),
          :kind => any(),
          :name => any()
        }

  field(:accountId)
  field(:availablePermissionIds, type: :list)
  field(:id)
  field(:kind)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.Subaccount do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.Subaccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.Subaccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
