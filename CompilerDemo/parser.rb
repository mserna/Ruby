# Matthew Serna
# Compliler Demo
# Parse Tree - parses through syntax tree and goes through each token

require_relative 'lex'
require_relative 'error'

class Parser

	Expression = Struct.new(:type, :value, :left, :right, :oper)
	# type is a char
	# value is a integer
	# left and right are _expression values
	# oper is an Operator

	def initialize
		@instance_of_lex_class = Lexer.new
		@instance_of_error_class = Error.new
		ASTNode = Expression.new() # top Node is an Expression
		Token = @instance_of_lex_class.Token
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
		if(Token.sclass == '+'){
			operator = '+'
			@instance_of_lex_class.getNextToken
			return 1
		if(Token.sclass == '*'){
			operator = '*'
			@instance_of_lex_class.getNextToken
			return 1
		}
		return 0
	end

	end

	# Parameter: Expression
	def parseExpression(expression)
		if(Token.sclass == @instance_of_lex_class.DIGIT)
			expression[:type] = 'D'
			expression[:value] = Token.representation - '0'
			@instance_of_lex_class.getNextToken
			return 1
		end

		if(Token.sclass == '(')
			expression[:type] = 'P'
			@instance_of_lex_class.getNextToken
			if(!parseExpression(expression[:left]))
				puts "Error - Missing Expression"
			end
			if(!parseExpression(expression[:oper]))
				puts "Error - Missing Operator"
			end
			if(!parseExpression(expression[:right]))
				puts "Error - Missing Expression"
			end
			if(Token.sclass != ')')
				puts "Error - Missing ')'"
			end
			@instance_of_lex_class.getNextToken
			return 1
		end
	end

	#Accessed by demo driver
	# Parameter: ASTNode
	def parseProgram(icode)
		expr = Expression.new
		@instance_of_lex_class.getNextToken
		if(parseExpression(expr))
			if(Token.sclass != @instance_of_lex_class.EoF)
				puts "Error" #TODO: Handle error
			end
			icode = expr
			return 1
		end
		return 0
	end
end

