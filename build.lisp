(require 'asdf)
(push "./" asdf:*central-registry*)
(asdf:load-system :app)

#+sbcl (sb-ext:save-lisp-and-die #P"app"
                                 :toplevel #'app:main
                                 :executable t)

#+ecl (asdf:make-build :app
                       :type :program
                       :move-here #P"./"
                       :epilogue-code '(app:main))
#+ecl (si:exit)
