https://github.com/yammer/circuitbox

- What are circuitbreakers
  - Why

- Configuration is important
  - params need to be configurable

  - timeout of a request
  - sample time window -> number of failures every X
  - sleep window

- 2 ways to use...
  - Service is down
    -> keep application layer safe
    -> not really interesting
  - Service is slow / overloaded ->
    -> open circuit
    -> let the service heal itself

- Metrics are important
  - because the service seems healthy from the outside

Circuitbreakers are protect you, but they make the app fall over very suddenly


