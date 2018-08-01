#!/usr/bin/python
# encoding=utf-8

#########################################################################
# Function: 
# @author: DRUNK
# mail: shuangfu.zhang@xiaoi.com
# Created Time: Fri 26 Jan 2018 05:52:00 PM
#########################################################################
from collections import Counter
import os
import numpy as np


def _read_words(filename):
    with open(filename, 'r', encoding='utf-8') as f:
        return f.read().replace('\n', '<eos>').split()


def _build_vocab(filename):
    data = _read_words(filename)

    counter = Counter(data)
    # print(counter[:20])
    count_pairs = sorted(counter.items(), key=lambda x: -x[1])

    words, _ = list(zip(*count_pairs))
    word2id = dict(zip(words, range(len(words))))
    return words, word2id


if __name__ == '__main__':
    _build_vocab('/home/kane/nlp/lm/app/data/simple-examples/data/ptb.train.txt')
