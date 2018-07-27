(uiop/package:define-package :cl-ea/operators/all
  (:nicknames :cl-ea/operators)
  (:use-reexport :cl-ea/operators/crossover
                 :cl-ea/operators/mutation
                 :cl-ea/operators/selection
                 ))

(in-package :cl-ea/operators/all)
