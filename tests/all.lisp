(defpackage :cl-ea-tests/tests/all
  (:nicknames :cl-ea-tests)
  (:use :common-lisp)
  (:import-from :cl-ea-tests/tests/operators-tests #:operators-test-suite)
  (:export #:run-all-tests))

(in-package :cl-ea-tests/tests/all)

(defun run-all-tests ()
  (princ "Running all CL-EA unit tests")
  (fiveam:run! 'operators-test-suite))
