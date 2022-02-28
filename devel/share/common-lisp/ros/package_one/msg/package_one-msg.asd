
(cl:in-package :asdf)

(defsystem "package_one-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "NUM" :depends-on ("_package_NUM"))
    (:file "_package_NUM" :depends-on ("_package"))
  ))