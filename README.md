train.sh 是通过kenlm训练语言模型<br>
app.py 是语言模型REST服务<br>
调用类型：
http://192.168.189.130:5000/score?text=贷款
http://192.168.189.130:5000/score?text=货款
得分越高，表示语句约通顺，在训练模型中，出现的概率大。
