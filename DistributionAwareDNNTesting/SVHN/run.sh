#!/bin/bash
python dist_gen_diff.py light 3 .5 .1 .1 500 30 .25 --target_model=2
python dist_gen_diff.py occl 3 .5 .1 .1 500 30 .25 --target_model=2
python dist_gen_diff.py blackout 3 .5 .1 .1 500 30 .25 --target_model=2
