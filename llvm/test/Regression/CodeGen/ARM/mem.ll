; RUN: llvm-as < %s | llc -march=arm &&
; RUN: llvm-as < %s | llc -march=arm | grep strb &&
; RUN: llvm-as < %s | llc -march=arm | grep strh

void %f1() {
entry:
	store ubyte 0, ubyte* null
	ret void
}

void %f2() {
entry:
	store short 0, short* null
	ret void
}
