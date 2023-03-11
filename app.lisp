(defpackage :app
  (:use :cl)
  (:export :main))
(in-package :app)

(defun main ()
  (format t "Hello Lisp!~%"))
