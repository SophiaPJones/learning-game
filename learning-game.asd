(asdf:defsystem #:learning-game
  :description "Describe learning-game here"
  :author "Your Name <your.name@example.com>"
  :license "Specify license here"
  :serial t
  ;; Refs: https://goo.gl/CY5cLK, https://stackoverflow.com/a/21663603/747872
  :depends-on (:jonathan
               :arrow-macros
               :cl-ppcre
               :alexandria
               :let-plus
               :dexador
               :local-time)
  :components ((:module "src"
                :serial t
                :components ((:file "main"))))
  :in-order-to ((asdf:test-op (asdf:test-op #:learning-game/test))))


(asdf:defsystem #:learning-game/test
  :serial t
  :depends-on (:learning-game
               (:version "prove" "1.0.0"))
  :defsystem-depends-on (:prove-asdf)
  :components ((:module "test"
                :components ((:test-file "main"))))
  :perform (asdf:test-op :after (op c)
                         (funcall (intern #.(string :run) :prove) c)))
