
(cl:in-package :asdf)

(defsystem "count-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "cont" :depends-on ("_package_cont"))
    (:file "_package_cont" :depends-on ("_package"))
  ))