export PERL_TEST_HARNESS_DUMP_TAP := /tmp/test-output

test:
	@echo "Running tests..."
	@prove -Ilib t

	