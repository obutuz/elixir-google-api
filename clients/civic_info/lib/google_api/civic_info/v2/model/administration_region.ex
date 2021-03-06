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

defmodule GoogleApi.CivicInfo.V2.Model.AdministrationRegion do
  @moduledoc """
  Describes information about a regional election administrative area.

  ## Attributes

  - electionAdministrationBody (AdministrativeBody): The election administration body for this area. Defaults to: `null`.
  - id (String.t): An ID for this object. IDs may change in future requests and should not be cached. Access to this field requires special access that can be requested from the Request more link on the Quotas page. Defaults to: `null`.
  - local_jurisdiction (AdministrationRegion): The city or county that provides election information for this voter. This object can have the same elements as state. Defaults to: `null`.
  - name (String.t): The name of the jurisdiction. Defaults to: `null`.
  - sources ([Source]): A list of sources for this area. If multiple sources are listed the data has been aggregated from those sources. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :electionAdministrationBody => GoogleApi.CivicInfo.V2.Model.AdministrativeBody.t(),
          :id => any(),
          :local_jurisdiction => GoogleApi.CivicInfo.V2.Model.AdministrationRegion.t(),
          :name => any(),
          :sources => list(GoogleApi.CivicInfo.V2.Model.Source.t())
        }

  field(:electionAdministrationBody, as: GoogleApi.CivicInfo.V2.Model.AdministrativeBody)
  field(:id)
  field(:local_jurisdiction, as: GoogleApi.CivicInfo.V2.Model.AdministrationRegion)
  field(:name)
  field(:sources, as: GoogleApi.CivicInfo.V2.Model.Source, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.AdministrationRegion do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.AdministrationRegion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.AdministrationRegion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
