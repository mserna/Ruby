# Matthew Serna
# Compliler Demo
# Driver for compiler demo - start of program

require_relative 'parser'
require_relative 'error'
require_relative 'backend'

#### MAIN CLASS ####

ASTNode *icode
if (!parseProgram(icode))
	Error("No top-level expression")
else
	Process(icode)

#### END ####
