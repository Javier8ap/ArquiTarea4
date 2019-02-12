.text
	li $s0,2 #Selector
	li $s1,5 #A
	li $s2,3 #B
	li $s3,0 #C
	
main:
	beq $s0,1,suma
	beq $s0,2,resta
	beq $s0,3,multiplica
	beq $s0,4,andBitwise
	j exit
	 
suma:
	add $s3,$s1,$s2
resta:
	sub $s3,$s1,$s2
multiplica:
	mul $s3,$s1,$s2
andBitwise:
	and $s3,$s1,$s2
exit: