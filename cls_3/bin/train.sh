model=model001
for fold in 0 1 2 3 4
do 
	conf=./conf/${model}_${fold}.py
	for epoch in 25 30 35 40 45
	do 
		python -m src.cnn.main train ${conf} --fold ${fold} --gpu 0 --epoch ${epoch}
	done
done
