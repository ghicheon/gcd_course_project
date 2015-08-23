
How it works..
------------------

1. read files using read.csv()  from train/test  of current directory.
2. merged with rbind()
3. extract urged columns. made mean_std 
   I used the traditional tool grep in order to extract correct column numbers.
4. I made new list of activity name  from the file that is made from y_test.txt & y_train.txt
5. I named all column of previous result. 
   actually, I'm not satisfied with the names.
   Unfortunetly, I didn't have time to come up with nice many names... 

6. write to files using write.table()

