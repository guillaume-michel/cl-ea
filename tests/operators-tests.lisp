(defpackage :cl-ea-tests/tests/operators-tests
  (:use :common-lisp :cl-ea)
  (:export #:operators-test-suite))

(in-package :cl-ea-tests/tests/operators-tests)

(fiveam:def-suite operators-test-suite
    :description "CL-EA's operators test suite.")

(fiveam:in-suite operators-test-suite)

(fiveam:test uniform-crossover
    (let ((p 0.5)
          (ind1 '(1 2))
          (ind2 '(3 4))
          (res1 '((1 2) (3 4)))
          (res2 '((3 2) (1 4)))
          (res3 '((1 4) (3 2)))
          (res4 '((3 4) (1 2))))
      (fiveam:is (or (equal (uniform-crossover p ind1 ind2) res1)
                     (equal (uniform-crossover p ind1 ind2) res2)
                     (equal (uniform-crossover p ind1 ind2) res3)
                     (equal (uniform-crossover p ind1 ind2) res4)))))
