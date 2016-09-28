proc autoreg data=dodgers all plots(unpack);
model has_game = traffic_datetime cars_cnt;
run;
quit;   
Proc autoreg data=dodgers;
model  has_game = traffic_datetime cars_cnt / nlag=1;
Run;
