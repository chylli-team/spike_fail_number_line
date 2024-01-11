export PERL_TEST_HARNESS_DUMP_TAP := test-output
export PERL5LIB := local/lib/perl5:$(PERL5LIB)

test:
	@echo "Running tests..."
	@perl -Ilib local/bin/yath test --renderer=Formatter --renderer=JUnit -j4 -r t

clean:
	@git clean -fd
	rm -rf test-output	