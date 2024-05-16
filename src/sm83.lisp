(ql:quickload "serapeum")

(defpackage :gbcl
  (:use :cl :serapeum))

(in-package :gbcl)

(defvar *registers* (dict :a 0
			  :b 0
			  :c 0
			  :d 0
			  :e 0
			  :h 0
			  :l 0
			  :f 0))

(format t "~X~%" 0)

(defun add (register n)
  (setf (gethash register *registers*) (+ (gethash register *registers*) n)))

(add :a 5)

(gethash :a *registers*)

