# CMake generated Testfile for 
# Source directory: /home/kane/lm/kenlm/kenlm/lm
# Build directory: /home/kane/lm/kenlm/kenlm/build/lm
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(left_test "/home/kane/lm/kenlm/kenlm/build/tests/left_test" "/home/kane/lm/kenlm/kenlm/lm/test.arpa")
add_test(partial_test "/home/kane/lm/kenlm/kenlm/build/tests/partial_test" "/home/kane/lm/kenlm/kenlm/lm/test.arpa")
add_test(model_test "/home/kane/lm/kenlm/kenlm/build/tests/model_test" "/home/kane/lm/kenlm/kenlm/lm/test.arpa" "/home/kane/lm/kenlm/kenlm/lm/test_nounk.arpa")
subdirs("common")
subdirs("builder")
subdirs("filter")
subdirs("interpolate")
