#!/usr/bin/python3
# encoding=utf-8

#########################################################################
# Function: 
# @author: DRUNK
# mail: shuangfu.zhang@xiaoi.com
# Created Time: Thu 18 Jan 2018 02:29:45 PM
#########################################################################

import os, sys
from flask import Flask, jsonify, abort, make_response, request
import kenlm

app = Flask(__name__)
model = kenlm.Model('./model/contract.arpa')


@app.route('/', methods=['GET'])
def help():
    return "hello language model."


@app.route('/score', methods=['GET', 'POST'])
def score():
    text = None
    print(request.method)
    if request.method == 'GET':
        text = request.args.get('text')
    elif request.method == 'POST':
        if not request.json or not 'text' in request.json:
            return jsonify({
                'status': 400,
                'msg': '输入的格式有误,POST接口,且传递为JSON格式.' +
                       '例如:{"text":"hello language model"}'}
            ), 201
        data = {'text': request.json['text']}
        text = data['text']
    if not text:
        return jsonify({
            'status': 401,
            'msg': '输入的参数有误,目前只支持POST和GET接口,' +
                   'GET:http://ip:port/score?text=计算' +
                   'POST:{"text":"计算"}'
        }), 201

    if len(text) < 1:
        return jsonify({
            'status': 300,
            'msg': '输入的文本长度不能为空'}
        ), 201
    score = model.score(parse_text(text))
    print(score, text)
    return jsonify({
        'status': 200,
        'score': model.score(parse_text(text), bos=True, eos=True)
    }), 200


@app.route('/lm', methods=['POST'])
def lm():
    if not request.json:
        return jsonify({
            'status': 400,
            'msg': '输入的格式有误,POST接口,且传递为JSON格式.' +
                   '例如:["text_01","text_02"]'}
        ), 201
    print(request.json)
    text_list = request.json
    if len(text_list) < 2:
        return jsonify({
            'status': 300,
            'msg': '请输入至少2句文本,例如:["text_01","text_02"]'}
        ), 201

    size = len(text_list[0])
    for text in text_list:
        if len(text) != size:
            return jsonify({
                'status': 301,
                'msg': '输入每条文本的字数应一致,例如:["text_01","text_02"]'}
            ), 201

    best_score = model.score(parse_text(text_list[0]))
    best_text = text_list[0]
    print(best_score, best_text)
    for i in range(1, len(text_list)):
        score = model.score(parse_text(text_list[i]))
        print(score, text_list[i])
        if score > best_score:
            best_score = score
            best_text = text_list[i]

    return jsonify({
        'status': 200,
        'text': best_text
    }), 200


def parse_text(text):
    return ' '.join(list(text))


if __name__ == '__main__':
    app.run(host="0.0.0.0", debug=True)
