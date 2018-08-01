# CMake generated Testfile for 
# Source directory: /home/kane/lm/kenlm/kenlm/util
# Build directory: /home/kane/lm/kenlm/kenlm/build/util
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(bit_packing_test "/home/kane/lm/kenlm/kenlm/build/tests/bit_packing_test")
add_test(integer_to_string_test "/home/kane/lm/kenlm/kenlm/build/tests/integer_to_string_test")
add_test(joint_sort_test "/home/kane/lm/kenlm/kenlm/build/tests/joint_sort_test")
add_test(multi_intersection_test "/home/kane/lm/kenlm/kenlm/build/tests/multi_intersection_test")
add_test(pcqueue_test "/home/kane/lm/kenlm/kenlm/build/tests/pcqueue_test")
add_test(probing_hash_table_test "/home/kane/lm/kenlm/kenlm/build/tests/probing_hash_table_test")
add_test(read_compressed_test "/home/kane/lm/kenlm/kenlm/build/tests/read_compressed_test")
add_test(sized_iterator_test "/home/kane/lm/kenlm/kenlm/build/tests/sized_iterator_test")
add_test(sorted_uniform_test "/home/kane/lm/kenlm/kenlm/build/tests/sorted_uniform_test")
add_test(string_stream_test "/home/kane/lm/kenlm/kenlm/build/tests/string_stream_test")
add_test(tokenize_piece_test "/home/kane/lm/kenlm/kenlm/build/tests/tokenize_piece_test")
add_test(file_piece_test "/home/kane/lm/kenlm/kenlm/build/tests/file_piece_test" "/home/kane/lm/kenlm/kenlm/util/file_piece.cc")
subdirs("double-conversion")
subdirs("stream")
