#!/bin/bash

# Run tests with coverage
dart pub global run coverage:test_with_coverage

# Remove generated files from coverage
lcov --remove coverage/lcov.info '*.gen.dart' -o coverage/ansix_lcov.info

# Generate coverage report
genhtml coverage/ansix_lcov.info -o coverage/html

