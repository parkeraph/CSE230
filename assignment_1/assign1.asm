.data
name: .asciiz "andrew hampton"
promt: .asciiz "Enter a number"
new_line: .asciiz "\n"
val1: .word 0
val2: .word 0
val3: .word 0
.text
.globl main
main:
	#TASK 1
		addi $s0, $0, 19 #here I load register $s0 with the immidiate 19
	#TASK 2
		lui $v1 0x1001 #init base register for memory
		ori $a0 $v1 0xF #put promt in register to print
		addi $v0, $0, 4 #load command register with print system command
		syscall #execute command to print promt
		addi $v0, $0, 5 # number 5 is the system command to allow input from the user
 		syscall #this command executes the sysem command in $v0
		add $s1 $0 $v0 #store input into reg $s1
	#TASK 3
		lui $v1 0x1001 #init base register for memory
		ori $a0 $v1 0xF #put promt in register to print
		addi $v0, $0, 4 #load command register with print system command
		syscall #execute command to print promt
		addi $v0, $0, 5 # number 5 is the system command to allow input from the user
 		syscall #this command executes the sysem command in $v0
		add $s2 $0 $v0 #store input into reg $s2
#4. Store the value in $s1 into the memory labeled “val1”
	#TASK 4
		lui $v1 0x1001 #bhase register for mem store
		sw $s1 0x20($v1) #location of val1 is $v1 + 20
#5. Store the value in $s2 into the memory labeled “val2”
	#TASK 5 
		lui $v1 0x1001 #reset base reg for good mesure
		sw $s2 0x24($v1) #write to location of 
#6. Calculate the value of $s0 - $s1 + $s2 and store the result in the memory labeled “val3”
	#TASK 6
		add $s3 $s1 $s2 # add s1 and s2 and store in s3
		sub $s4 $s0 $s3 #subtract s0 from the addition of s1 and s2
		sw $s4 0x28($v1)#store in val3
#7. Print the following output each on its own line
#a. Your name
#b. The value in val1
#c. The value in val2
#d. The value in val3
#8. Exchange or swap the values in $s1 and $s2
#9. Set the value in $s0 to –$s0
#10. Print the values finally in $s0, $s1 and $2
