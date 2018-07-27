;;;; (asdf:operate 'asdf:test-op :cl-ea)

#-asdf3.1 (error "cl-ea-tests requires ASDF 3.1")

(defsystem "cl-ea-tests"
  :description "CL-EA's unit tests."
  :author "Guillaume MICHEL"
  :mailto "guillaume.michel@orilla.fr"
  :homepage "http://orilla.fr"
  :class :package-inferred-system
  :depends-on (
               "fiveam"
               "cl-ea"
               "cl-ea-tests/tests/all"
               )
  :perform (test-op (o c) (symbol-call :cl-ea-tests :run-all-tests))
  )
