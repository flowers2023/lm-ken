####kenlm安装
详见https://github.com/kpu/kenlm
####模型训练
采用合同的语料进行训练<br>
```Bash
bash train.sh
``` 训练语言模型<br>
```Bash
./kenlm/bin/lmplz -o 5 --skip_symbols "<unk>" < ./txt/all.txt.parse > model/contract.arpa 
```

####REST服务
app.py 是语言模型REST服务<br>
####调用示例
http://192.168.189.130:5000/score?text=贷款<br>
http://192.168.189.130:5000/score?text=货款<br>
得分越高，表示语句约通顺，在训练模型中，出现的概率大。
