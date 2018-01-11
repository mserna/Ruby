# Matthew Serna
# Compliler Demo
# Lexical Analyzer - Tokenizes and sets up for AST and Code gen


# Values 0-255 are ASCII reserved
$EoF = 256 # To ensure end of file
$DIGIT = 257 #Created for other digit grammars

class Lexer 
	
	TokenType = Struct.new(:sclass, :representation) #class is of int type and representation is of char type

	def isLayoutChar (ch)
		case ch
		when ' ' || '\t' || '\n'
			return 1
		else
			return 0
		end
	end

	Token = TokenType.new()

	def getNextToken (void)
		ch = 0

		#loop to get a non-layout character
		loop do
			ch = getChar()
			if(ch < 0)
				Token.sclass = EoF
				Token.representation = '#'
				return
			end
			break if (!isLayoutChar(ch))
		end

		#now classify character
		if('0' <= ch && ch <= '9')
			Token.sclass = DIGIT
		else
			Token.sclass = ch
		end

		Token.representation = ch

	end

end
