# What is State?

State is data that persists over time.

A protocol is a set of rules.  HTTP is a protocol for the interactinos between a client and server.

WHen someone says that HTTP is state-less, what they mean is taht every HTTP request is handled separately.  When a server finishes handling one request, it forgets everything about that request before accepting the next one.

You might be thinking the servers remember things between requests all the time, and you would be correct.  But doing this requires techniques that are built on top of HTTP and not part of the protocol itself.

The grammar ruels of written language include concepts of words, sentences, punctuation, etc., but no built-in concept of meaning.  Determining the meaning of a sentence requires a level of interpretation above that of the words themselves.

Likewise, HTTP has no concept of state itself- but we can use it to send information back and forth that, when interpreted correctly on both sides, creates a system where we can persist state across requests.