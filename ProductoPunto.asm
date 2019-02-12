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
	
	li $t1, 0 #int acc = 0;
While:	
	slti $t0,$s4,3 #set if less than 3
	beq $t0,$zero,exit
	
	addi $s4,$s4,1
	j While
multAndAccumulate:
Acumulate:
exit: