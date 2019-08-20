#!/bin/sh

# Tested on OSX
sed  's/\("ImportValue\)::\([a-zA-Z0-9-].*"\)/{\1": "\2}/' input.test

# Fails on OSX
# -r to avoid escaping parens
#sed -r 's/("ImportValue)::([a-zA-Z0-9-].*")/{\1": "\2}/' input.test
#sed --regexp-extend 's/("ImportValue)::([a-zA-Z0-9-].*")/{\1": "\2}/' input.test

# Diff with output.test should be the same.


# Another way to test with input string rather than using file
echo '"QUEUE_STATEMENT_AGG_NAME": {"ImportValue": "bankstatements-statement-agg-stg"},' | sed  's/\("ImportValue\)::\([a-zA-Z0-9-].*"\)/{\1": "\2}/'
