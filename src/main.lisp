(in-package :cl-user)
(defpackage #:learning-game.main
  (:use :cl)
  (:import-from :arrow-macros #:->>)
  (:export #:hello))
(in-package #:learning-game.main)


(defun hello (name)
  (format nil "hello ~a" name))


(defun main ()
  (->> sb-ext:*posix-argv* second hello (format t "~a~%")))
