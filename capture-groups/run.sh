#!/bin/sh


sed  's/\("ImportValue\)::\([a-zA-Z0-9-].*"\)/{\1": "\2}/' input.test

# Diff with output.test should be the same.

