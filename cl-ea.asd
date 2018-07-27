#-asdf3.1 (error "cl-ea requires ASDF 3.1")

(defsystem "cl-ea"
  :description "Evolutionary algorithm framework."
  :version "0.0.1"
  :author "Guillaume MICHEL"
  :mailto "guillaume.michel@orilla.fr"
  :homepage "http://orilla.fr"
  :license #.(uiop:read-file-string
              (uiop:subpathname *load-pathname* "COPYING"))
  :long-description #.(uiop:read-file-string
                       (uiop:subpathname *load-pathname* "README.md"))
  :class :package-inferred-system
  :depends-on (
               "cl-ea/all"
               )
  :in-order-to ((test-op (test-op "cl-ea-tests")))
  )
