.PHONY: clean

clean:
	rm "Parser.tab.c" "Parser.tab.h" "Parser.tab.o" "lex.yy.c" "calculator"

all: flex bison parser calculator

run: build launch

tests: build launch_tests

flex: Regular.l
	flex Regular.l
	
bison: Parser.y
	bison -d Parser.y 

parser: Parser.tab.c Parser.tab.h
	gcc Parser.tab.c -c

calculator: Parser.tab.o Calculator.c Parser.tab.h
	gcc -o calculator Calculator.c Parser.tab.o

launch:
	./calculator


