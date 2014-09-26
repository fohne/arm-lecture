	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}
	
	mov r3, r0
	mov r0, #0
	mov r5, #1	

.L1:
	mov r4, r0
	mov r0, r5
	adds r5, r4, r0
	
	
	subs r3, #1
	cmps r3, #0
	bgt .L1

	pop {r3, r4, r5, pc}		@EPILOG

	@ END CODE MODIFICATION

	.size fibonacci, .-fibonacci
	.end
