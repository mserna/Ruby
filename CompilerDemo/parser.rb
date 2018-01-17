# Matthew Serna
# Compliler Demo
# Parse Tree - parses through syntax tree and goes through each token

require lex
require error

class Parser

	def initialize
		@instance_of_lex_class = Lexer.new
		@instance_of_error_class = Error.new
	end

	def newExpression()
		return Expression.size 
	end

	# Parameter: Expression
	def freeExpression(expression)
		#TODO: Free expression
	end

	# Parameter: Operator
	def parseOperator(operator)
	end

	# Parameter: Expression
	def parseExpression(expression)
	end

	#Accessed by demo driver
	# Parameter: ASTNode
	def parseProgram(icode)
		@instance_of_lex_class.getNextToken
	end
end

