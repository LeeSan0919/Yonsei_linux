#!/bin/bash

gvariable=global
lvariable=global

myfunction()
{
        local lvariable=local
        gvariable=changed

        echo "inside function:"
        echo "gvariable=$gvariable"
        echo "lvariable=$lvariable"
}

echo "before function:"
echo "gvariable=$gvariable"
echo "lvariable=$lvariable"

echo

myfunction

echo

echo "after function:"
echo "gvariable=$gvariable"
echo "lvariable=$lvariable"
