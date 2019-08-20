#!/bin/sh

sed  's/\("ImportValue\)::\([a-zA-Z0-9-].*"\)/{\1": "\2}/' file.test
