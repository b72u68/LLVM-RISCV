llvm_lexer.ml: parser llvm_lexer.mll
	ocamllex llvm_lexer.mll


parser: llvm_parser.mly
	menhir --explain llvm_parser.mly


clean:
	rm -f *~
	rm -f *.cmo
	rm -f *.cmi
	rm -f *.cmx
	rm -f *.o
	rm -f llvm_parser.ml
	rm -f llvm_parser.mli
	rm -f llvm_lexer.ml
