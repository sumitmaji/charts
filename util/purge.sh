#!/bin/bash

release=$1
helm del --purge $release
