(defpackage #:learning-game/test.main
  (:use :cl :prove :learning-game.main))
(in-package #:learning-game/test.main)

(plan nil)


(subtest "Hello test"
  (is (hello "Eric") "hello Eric")
      :test #'string=)


(finalize)
