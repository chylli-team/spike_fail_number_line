export PERL_TEST_HARNESS_DUMP_TAP := test-output
#export PERL5LIB := local/lib/perl5:$(PERL5LIB)

test:
	@echo "Running tests..."
	@perl $$(which prove) -Ilib --merge --formatter TAP::Formatter::JUnit -r t

clean:
	@git clean -fd
	rm -rf test-output	
