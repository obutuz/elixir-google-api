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

defmodule GoogleApi.DFAReporting.V28.Model.Account do
  @moduledoc """
  Contains properties of a Campaign Manager account.

  ## Attributes

  - accountPermissionIds ([String.t]): Account permissions assigned to this account. Defaults to: `null`.
  - accountProfile (String.t): Profile for this account. This is a read-only field that can be left blank. Defaults to: `null`.
    - Enum - one of [ACCOUNT_PROFILE_BASIC, ACCOUNT_PROFILE_STANDARD]
  - active (boolean()): Whether this account is active. Defaults to: `null`.
  - activeAdsLimitTier (String.t): Maximum number of active ads allowed for this account. Defaults to: `null`.
    - Enum - one of [ACTIVE_ADS_TIER_100K, ACTIVE_ADS_TIER_1M, ACTIVE_ADS_TIER_200K, ACTIVE_ADS_TIER_300K, ACTIVE_ADS_TIER_40K, ACTIVE_ADS_TIER_500K, ACTIVE_ADS_TIER_750K, ACTIVE_ADS_TIER_75K]
  - activeViewOptOut (boolean()): Whether to serve creatives with Active View tags. If disabled, viewability data will not be available for any impressions. Defaults to: `null`.
  - availablePermissionIds ([String.t]): User role permissions available to the user roles of this account. Defaults to: `null`.
  - countryId (String.t): ID of the country associated with this account. Defaults to: `null`.
  - currencyId (String.t): ID of currency associated with this account. This is a required field. Acceptable values are:  - \&quot;1\&quot; for USD  - \&quot;2\&quot; for GBP  - \&quot;3\&quot; for ESP  - \&quot;4\&quot; for SEK  - \&quot;5\&quot; for CAD  - \&quot;6\&quot; for JPY  - \&quot;7\&quot; for DEM  - \&quot;8\&quot; for AUD  - \&quot;9\&quot; for FRF  - \&quot;10\&quot; for ITL  - \&quot;11\&quot; for DKK  - \&quot;12\&quot; for NOK  - \&quot;13\&quot; for FIM  - \&quot;14\&quot; for ZAR  - \&quot;15\&quot; for IEP  - \&quot;16\&quot; for NLG  - \&quot;17\&quot; for EUR  - \&quot;18\&quot; for KRW  - \&quot;19\&quot; for TWD  - \&quot;20\&quot; for SGD  - \&quot;21\&quot; for CNY  - \&quot;22\&quot; for HKD  - \&quot;23\&quot; for NZD  - \&quot;24\&quot; for MYR  - \&quot;25\&quot; for BRL  - \&quot;26\&quot; for PTE  - \&quot;27\&quot; for MXP  - \&quot;28\&quot; for CLP  - \&quot;29\&quot; for TRY  - \&quot;30\&quot; for ARS  - \&quot;31\&quot; for PEN  - \&quot;32\&quot; for ILS  - \&quot;33\&quot; for CHF  - \&quot;34\&quot; for VEF  - \&quot;35\&quot; for COP  - \&quot;36\&quot; for GTQ  - \&quot;37\&quot; for PLN  - \&quot;39\&quot; for INR  - \&quot;40\&quot; for THB  - \&quot;41\&quot; for IDR  - \&quot;42\&quot; for CZK  - \&quot;43\&quot; for RON  - \&quot;44\&quot; for HUF  - \&quot;45\&quot; for RUB  - \&quot;46\&quot; for AED  - \&quot;47\&quot; for BGN  - \&quot;48\&quot; for HRK  - \&quot;49\&quot; for MXN  - \&quot;50\&quot; for NGN Defaults to: `null`.
  - defaultCreativeSizeId (String.t): Default placement dimensions for this account. Defaults to: `null`.
  - description (String.t): Description of this account. Defaults to: `null`.
  - id (String.t): ID of this account. This is a read-only, auto-generated field. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#account\&quot;. Defaults to: `null`.
  - locale (String.t): Locale of this account. Acceptable values are:  - \&quot;cs\&quot; (Czech)  - \&quot;de\&quot; (German)  - \&quot;en\&quot; (English)  - \&quot;en-GB\&quot; (English United Kingdom)  - \&quot;es\&quot; (Spanish)  - \&quot;fr\&quot; (French)  - \&quot;it\&quot; (Italian)  - \&quot;ja\&quot; (Japanese)  - \&quot;ko\&quot; (Korean)  - \&quot;pl\&quot; (Polish)  - \&quot;pt-BR\&quot; (Portuguese Brazil)  - \&quot;ru\&quot; (Russian)  - \&quot;sv\&quot; (Swedish)  - \&quot;tr\&quot; (Turkish)  - \&quot;zh-CN\&quot; (Chinese Simplified)  - \&quot;zh-TW\&quot; (Chinese Traditional) Defaults to: `null`.
  - maximumImageSize (String.t): Maximum image size allowed for this account, in kilobytes. Value must be greater than or equal to 1. Defaults to: `null`.
  - name (String.t): Name of this account. This is a required field, and must be less than 128 characters long and be globally unique. Defaults to: `null`.
  - nielsenOcrEnabled (boolean()): Whether campaigns created in this account will be enabled for Nielsen OCR reach ratings by default. Defaults to: `null`.
  - reportsConfiguration (ReportsConfiguration): Reporting configuration of this account. Defaults to: `null`.
  - shareReportsWithTwitter (boolean()): Share Path to Conversion reports with Twitter. Defaults to: `null`.
  - teaserSizeLimit (String.t): File size limit in kilobytes of Rich Media teaser creatives. Acceptable values are 1 to 10240, inclusive. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountPermissionIds => list(any()),
          :accountProfile => any(),
          :active => any(),
          :activeAdsLimitTier => any(),
          :activeViewOptOut => any(),
          :availablePermissionIds => list(any()),
          :countryId => any(),
          :currencyId => any(),
          :defaultCreativeSizeId => any(),
          :description => any(),
          :id => any(),
          :kind => any(),
          :locale => any(),
          :maximumImageSize => any(),
          :name => any(),
          :nielsenOcrEnabled => any(),
          :reportsConfiguration => GoogleApi.DFAReporting.V28.Model.ReportsConfiguration.t(),
          :shareReportsWithTwitter => any(),
          :teaserSizeLimit => any()
        }

  field(:accountPermissionIds, type: :list)
  field(:accountProfile)
  field(:active)
  field(:activeAdsLimitTier)
  field(:activeViewOptOut)
  field(:availablePermissionIds, type: :list)
  field(:countryId)
  field(:currencyId)
  field(:defaultCreativeSizeId)
  field(:description)
  field(:id)
  field(:kind)
  field(:locale)
  field(:maximumImageSize)
  field(:name)
  field(:nielsenOcrEnabled)
  field(:reportsConfiguration, as: GoogleApi.DFAReporting.V28.Model.ReportsConfiguration)
  field(:shareReportsWithTwitter)
  field(:teaserSizeLimit)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.Account do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.Account.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.Account do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end