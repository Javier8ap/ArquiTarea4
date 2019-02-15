
.text
main:
	li $s0,1 #Counter
	li $s1,0 #Variable
	li $s3,0 #C
	li $v0, 4 #constant to divide
	
while:
	jal suma
	la $s0,($s3)
	div  $s1,$s0,$v0
	#slti $t1,$s2,20
	slti $t1,$s1,20
	beq $t1,$zero,exit
suma: 
	li $s3,0
	add $s3,$s0,$s0
	jr $ra
exit:
