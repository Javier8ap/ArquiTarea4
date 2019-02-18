.data
	Vector1: .word 1 2 3
	Vector2: .word 6 7 8
	Vector3: .word 0
	
.text

Main:
	la $s1, Vector1 #Loading base address
	la $s2, Vector2 #Loading base address
	la $s3, Vector3 #Loading base address
	li $s4, 0 #para while
While:	
	slti $t0,$s4,3 #set if less than 3
	beq $t0,$zero,exit #saltara a exit cuando t no sea seteado por la ejecucion anterior
	li $s5,0 #Acc
	li $s6,0 # i
	jal multAndAccumulate #Llamamos a nuestra funcion
	
	addi $s4,$s4,1 #añadir uno a index
	j While
multAndAccumulate:
	li $t1,0 #MulRes
	li $t2,0 #Result
	lw $t3, 0($s1) 
	lw $t4, 0($s2)
	srl  $s1, $s1, 4
	srl  $s2, $s2, 4
	mul $t1,$t3,$t4 #Mulres = VectorA[i] + VectorB[i]
	#Acumulate
	li $t5, 0 #int Suma = 0;
	add $t5, $s5, $t1
	addi $t2, $t5, 0 #Result = Acumulate(acc, MulRes)
	addi $s5, $t2, 0 #Acc = miltAndAccumulate(Vector1, Vector2, acc)
	jr $ra #volver a main

	
exit:
