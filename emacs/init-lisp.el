; SLIME (Superior LISP Interaction Environment)
(add-to-list 'load-path "~/.emacs.d/plugins/slime/")  ; your SLIME directory
(require 'slime)
;; Loads other addons from contrib (better REPL, Fuzzy Completion, etc.)
(slime-setup '(slime-fancy))
(setq inferior-lisp-program "/usr/local/bin/clisp"  ; CLISP (used in Land of Lisp)
;(setq inferior-lisp-program "/usr/local/bin/sbcl"   ; Steelbank Common Lisp
      lisp-indent-function 'common-lisp-indent-function
      slime-complete-symbol-function 'slime-fuzzy-complete-symbol
      common-lisp-hyperspec-root "~/lisp/HyperSpec/")

(provide 'init-lisp)
