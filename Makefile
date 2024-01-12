export PERL_TEST_HARNESS_DUMP_TAP := test-output

test:
	@echo "Running tests..."
	@prove --formatter TAP::Formatter::JUnit -Ilib -Ilocal/lib/perl5 t

clean:
	@git clean -fd
	rm -rf test-output	