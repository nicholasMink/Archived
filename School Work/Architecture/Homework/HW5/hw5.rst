Homework 5
##########

RTL Specification
=================

  ::pencil2: For the Add Instruction

ADD REG1 REG2:

	(t0): MDR <- IR1;
	
	(t1): ALU_OP1 <- MDR;
	
	(t2): MDR <- IR2;
	
	(t3): ALU_OP2 <- MDR;
	
	(t4): MDR <- ALU_RES;
	
	(t5): IR1 <- MDR;

ADD REG DM:

	(t0): MDR <- IR1;
	
	(t1): ALU_OP1 <- MDR;
	
	(t2): MAR <- IR2;
	
	(t3): DM_AR <- MAR;
	
	(t4): DM_DR <- DM[DM_AR];
	
	(t5): MDR <- DM_DR;
	
	(t6): ALU_OP2 <- MDR;
	
	(t7): MDR <- ALU_RES;
	
	(t8): IR1 <- MDR;
	

ADD REG LITERAL:
	
	(t0): MDR <- IR1;
	
	(t1): ALU_OP1 <- MDR;
	
	(t2): MDR <- IR2;
	
	(t4): MDR <- ALU_RES;
	
	(t5): IR1 <- MDR;

ADD DM REG:

	(t0): MAR <- IR1;

	(t1): DM_AR <- MAR;

	(t2): DM_DR <- DM[DM_AR];

	(t3): MDR <- DM_DR;

	(t4): ALU_OP1 <- MDR;

	(t5): MDR <- IR2;

	(t6): ALU_OP2 <- MDR;

	(t7): MDR <- ALU_RES;

	(t8): DM_DR <- MDR;

	(t9): DM[DM_AR] <- DM_DR;

ADD DM LITERAL:

	(t0): MAR <- IR1;

	(t1): DM_AR <- MAR;

	(t2): DM_DR <- DM[DM_AR];

	(t3): MDR <- DM_DR;

	(t4): ALU_OP1 <- MDR;

	(t5): MDR <- IR2;

	(t6): ALU_OP2 <- MDR;

	(t7): MDR <- ALU_RES;

	(t8): DM_DR <- MDR;

	(t9): DM[DM_AR] <- DM_DR;

