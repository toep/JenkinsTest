JFLAGS = -g -d out/
JC = javac
.SUFFIXES: .java .class
.java.class:
	@echo compiling $*.java
	@$(JC) $(JFLAGS) $*.java

CLASSES = \
	src/Main.java

default: build

build:
	@mkdir -p out
	$(MAKE) classes

classes: $(CLASSES:.java=.class)

clean:
	@$(RM) out/*.class
	@echo Cleaned all class files
run:
	@cd out && java Main
