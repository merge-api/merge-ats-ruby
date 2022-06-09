# MergeATSClient::MultipartFormFieldRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the form field |  |
| **data** | **String** | The data for the form field. |  |
| **encoding** | [**EncodingEnum**](EncodingEnum.md) | The encoding of the value of &#x60;data&#x60;. Defaults to &#x60;RAW&#x60; if not defined. | [optional] |
| **file_name** | **String** | The file name of the form field, if the field is for a file. | [optional] |
| **content_type** | **String** | The MIME type of the file, if the field is for a file. | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::MultipartFormFieldRequest.new(
  name: resume,
  data: SW50ZWdyYXRlIGZhc3QKSW50ZWdyYXRlIG9uY2U&#x3D;,
  encoding: BASE64,
  file_name: resume.pdf,
  content_type: application/pdf
)
```

