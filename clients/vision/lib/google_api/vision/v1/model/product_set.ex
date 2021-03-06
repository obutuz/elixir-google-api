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

defmodule GoogleApi.Vision.V1.Model.ProductSet do
  @moduledoc """
  A ProductSet contains Products. A ProductSet can contain a maximum of 1 million reference images. If the limit is exceeded, periodic indexing will fail.

  ## Attributes

  - displayName (String.t): The user-provided name for this ProductSet. Must not be empty. Must be at most 4096 characters long. Defaults to: `null`.
  - indexError (Status): Output only. If there was an error with indexing the product set, the field is populated.  This field is ignored when creating a ProductSet. Defaults to: `null`.
  - indexTime (DateTime.t): Output only. The time at which this ProductSet was last indexed. Query results will reflect all updates before this time. If this ProductSet has never been indexed, this field is 0.  This field is ignored when creating a ProductSet. Defaults to: `null`.
  - name (String.t): The resource name of the ProductSet.  Format is: &#x60;projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID&#x60;.  This field is ignored when creating a ProductSet. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => any(),
          :indexError => GoogleApi.Vision.V1.Model.Status.t(),
          :indexTime => DateTime.t(),
          :name => any()
        }

  field(:displayName)
  field(:indexError, as: GoogleApi.Vision.V1.Model.Status)
  field(:indexTime, as: DateTime)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.ProductSet do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.ProductSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.ProductSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
