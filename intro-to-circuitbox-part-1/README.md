# Slides

Are based on https://github.com/sideshowcoder/cdeck/ to view this presentation,
install cdeck and run `rake generate_slides` and `thor cdeck:present ./slides`.

# Reliablity

"the ability of a system or component to perform its required functions under
stated conditions for a specified period of time."
-- according to wikipedia...

# Dependencies

"Without taking steps to ensure fault tolerance, 30 dependencies each with 99.99%
uptime would result in 2+ hours downtime/month (99.99%30 = 99.7% uptime = 2+
hours in a month)." -- Netflix

# Isolating dependencies

1. A dependency is down
2. A dependency is slow

# Dependencies are down

Easy to detect, and all we can do is serve a default

# Dependencies are slow

Harder to detect, we can let some request through but not to many

# Circuitbreaker

- Short circuit requests to a dependency with a lot of failures.
- Give a dependency room to breath, and self heal (shedding load)

# Monitoring

Always monitor your circuitbreakers!...

# Yes always!

# Seriously!

# Why?

Circuitbreakers which are configured right can make a service look healthy even
though it is about to fall over. - and you want to know that!

# Circuitbox + Faraday

let's see some code

# Some things to hack on or read up on

http://martinfowler.com/bliki/CircuitBreaker.html
Circuitbox  https://github.com/yammer/circuitbox
Semian      https://github.com/shopify/semian

