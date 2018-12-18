# Processing Responses

## Status Code

Status Code is a three-digit number that the server sends back after receiving a request signifying the status of the request.

Status Text displayed next to Status Code prodives description

## Most Common Response Status Codes
|**Status Code** | **Status Text** | **Meaning** |
|:---------------|:----------------|:------------|
|200|OK|The request was handled successfully|
|203|Found|Requested resource has changed temporarily- usually result in redirect to another URL|
|404|Not found|Requested resource cannot be found|
|500|Internal Server Error|Server has encountered a generic error|

## 302 Found
When browser sees a response status code of 302, it knows the resource has been moved, and will automatically follow new re-routed URL in `Location` response header

Common example: When you try to get on a specific page on a website but you need to be signed in first.  The website will reidirect you to a page to take care of the sign in process first, and then you'll be redirected to the original page you were trying to access.

## 404 Not Found
Server returns this status code when the requested resource cannot be found.

## 500 Internal Server Error
A 500 status code says "there's something wrong on the server side".  This is a generic error status code and the problem can vary, but it is with the server.

## Response Headers
Like Request Headers, we can also use the inspector to view response headers. Response Headers contian additional meta-information about response data being returned.

**Common Response Headers**  
|Header Name| Description | Example|
|:----------|:------------|:-------|
|Content Encoding | The type of encoding used on the data | Content-Encoding:gzip|
|Server| Name of the server | Server:thin 1.5.0 codename Knife |
|Location| Notify client of new resource location | Location: (some URL goes here)
|Content-Type|The type of data the response contains|Content-Type/html;charset=UTF-8|

## Summary

Most important parts of an HTTP response are:
- status code
- headers
- message body, which contains the raw response data