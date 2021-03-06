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

defmodule GoogleApi.IAM.V1.Model.BindingDelta do
  @moduledoc """
  One delta entry for Binding. Each individual change (only one member in each entry) to a binding will be a separate entry.

  ## Attributes

  - action (String.t): The action that was performed on a Binding. Required Defaults to: `null`.
    - Enum - one of [ACTION_UNSPECIFIED, ADD, REMOVE]
  - condition (Expr): Unimplemented. The condition that is associated with this binding. This field is logged only for Cloud Audit Logging. Defaults to: `null`.
  - member (String.t): A single identity requesting access for a Cloud Platform resource. Follows the same format of Binding.members. Required Defaults to: `null`.
  - role (String.t): Role that is assigned to &#x60;members&#x60;. For example, &#x60;roles/viewer&#x60;, &#x60;roles/editor&#x60;, or &#x60;roles/owner&#x60;. Required Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => any(),
          :condition => GoogleApi.IAM.V1.Model.Expr.t(),
          :member => any(),
          :role => any()
        }

  field(:action)
  field(:condition, as: GoogleApi.IAM.V1.Model.Expr)
  field(:member)
  field(:role)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.BindingDelta do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.BindingDelta.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.BindingDelta do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
