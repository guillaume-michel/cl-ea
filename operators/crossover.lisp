(defpackage :cl-ea/operators/crossover
  (:use :common-lisp)
  (:export #:uniform-crossover))

(in-package :cl-ea/operators/crossover)

(defun uniform-crossover (prob ind1 ind2)
  (list ind1 ind2))
