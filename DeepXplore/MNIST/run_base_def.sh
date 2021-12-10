#!/bin/bash
python gen_diff.py light 1 .1 10 500 20 .25 --target_model=2
python gen_diff.py occl 1 .1 10 500 20 .25 --target_model=2
python gen_diff.py blackout 1 .1 10 500 20 .25 --target_model=2
