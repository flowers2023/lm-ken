# CMake generated Testfile for 
# Source directory: /home/kane/lm/kenlm/kenlm/lm/interpolate
# Build directory: /home/kane/lm/kenlm/kenlm/build/lm/interpolate
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(backoff_reunification_test "/home/kane/lm/kenlm/kenlm/build/tests/backoff_reunification_test")
add_test(bounded_sequence_encoding_test "/home/kane/lm/kenlm/kenlm/build/tests/bounded_sequence_encoding_test")
add_test(normalize_test "/home/kane/lm/kenlm/kenlm/build/tests/normalize_test")
add_test(tune_derivatives_test "/home/kane/lm/kenlm/kenlm/build/tests/tune_derivatives_test")
add_test(tune_instances_test "/home/kane/lm/kenlm/kenlm/build/tests/tune_instances_test" "--" "/home/kane/lm/kenlm/kenlm/lm/interpolate/../common/test_data/toy0.1")
add_test(merge_vocab_test "/home/kane/lm/kenlm/kenlm/build/tests/merge_vocab_test" "/home/kane/lm/kenlm/kenlm/lm/interpolate/merge_test/test1" "/home/kane/lm/kenlm/kenlm/lm/interpolate/merge_test/test2" "/home/kane/lm/kenlm/kenlm/lm/interpolate/merge_test/test3" "/home/kane/lm/kenlm/kenlm/lm/interpolate/merge_test/test_bad_order" "/home/kane/lm/kenlm/kenlm/lm/interpolate/merge_test/test_no_unk")
