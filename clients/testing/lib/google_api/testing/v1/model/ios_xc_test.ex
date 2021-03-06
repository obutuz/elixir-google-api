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

defmodule GoogleApi.Testing.V1.Model.IosXcTest do
  @moduledoc """
  A test of an iOS application that uses the XCTest framework. Xcode supports the option to \&quot;build for testing\&quot;, which generates an .xctestrun file that contains a test specification (arguments, test methods, etc). This test type accepts a zip file containing the .xctestrun file and the corresponding contents of the Build/Products directory that contains all the binaries needed to run the tests.

  ## Attributes

  - testsZip (FileReference): Required. The .zip containing the .xctestrun file and the contents of the DerivedData/Build/Products directory. The .xctestrun file in this zip is ignored if the xctestrun field is specified. Defaults to: `null`.
  - xcodeVersion (String.t): Optional. The Xcode version that should be used for the test. Use the EnvironmentDiscoveryService to get supported options. Defaults to the latest Xcode version Firebase Test Lab supports. Defaults to: `null`.
  - xctestrun (FileReference): Optional. An .xctestrun file that will override the .xctestrun file in the tests zip. Because the .xctestrun file contains environment variables along with test methods to run and/or ignore, this can be useful for sharding tests. Default is taken from the tests zip. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :testsZip => GoogleApi.Testing.V1.Model.FileReference.t(),
          :xcodeVersion => any(),
          :xctestrun => GoogleApi.Testing.V1.Model.FileReference.t()
        }

  field(:testsZip, as: GoogleApi.Testing.V1.Model.FileReference)
  field(:xcodeVersion)
  field(:xctestrun, as: GoogleApi.Testing.V1.Model.FileReference)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.IosXcTest do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.IosXcTest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.IosXcTest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
