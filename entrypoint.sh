#!/bin/bash

pcscd --disable-polkit && mirakc
# polkitを無効としてpcscdを起動しないとスマートカードが読めない
# ref:https://github.com/LudovicRousseau/PCSC/issues/59#issuecomment-2633517579