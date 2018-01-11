# Matthew Serna
# Compliler Demo
# Driver for compiler demo - start of program

require 'parser'
require 'error'
require 'backend'

#### MAIN CLASS ####

AST_node *icode
if (!Parse_program(&icode))
	Error("No top-level expression")
else
	Process(icode)

#### END ####
