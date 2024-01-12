export JUNIT_TEST_FILE :="test-output/test-output.xml"
export PERL5LIB := local/lib/perl5:$(PERL5LIB)

test:
	@echo "Running tests..."
	@perldoc -l Path::Tiny
	@find /opt/hostedtoolcache/perl | grep yath
	@yath test --renderer=Formatter --renderer=JUnit t

clean:
	@git clean -fd
	rm -rf test-output	