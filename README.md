# gsp-double-encoding

This domo shows strange behavior of Grails 4 GSP double encoding prevention.

## Build an run

`$ ./gradlew bootRun`

Browse to `http://localhost:8080/demo`

## Problem

### Steps to Reproduce

1. Create new Grails 4 app via IntelliJ IDEA
2. Create Controller: put two Strings  `amp1: '&amp;'` and `amp2: '&'.encodeAsHTML()` to the model
3. Create GSP-View: output each String with `${…}` and `${raw(…)}` and test the Strings in the view for equality.
4. don't change any default settings

### Expected Behaviour

- all outputs of the strings in the model are equal
- … exactly if `amp1 == amp2` is `true`

### Actual Behaviour

- `amp1 == amp2` is `true` according to `<g:if>`
- `&{amp1}` is outputted as `&amp;amp;` in the HTML source → shows up in the browser as "&amp;amp;"
- `&{amp2}` is outputted as `&amp;`in the HTML source → shows up in the browser as "&"

### Documentation to double encoding prevention:

> Grails 2.3 includes double encoding prevention so that when an expression is evaluated, it will not encode if the data has already been encoded (Example `${foo.encodeAsHTML()}`).

—https://docs.grails.org/latest/guide/security.html#_double_encoding_prevention