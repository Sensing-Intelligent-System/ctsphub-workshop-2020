
(cl:in-package :asdf)

(defsystem "tutorial-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "my_message" :depends-on ("_package_my_message"))
    (:file "_package_my_message" :depends-on ("_package"))
  ))