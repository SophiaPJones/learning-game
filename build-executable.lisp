(ql:quickload :prove)  ; because of prove-asdf
(ql:quickload :learning-game)
(in-package :learning-game.main)
(sb-ext:save-lisp-and-die
 "learning-game"
 :toplevel #'main :executable t :compression 9)
