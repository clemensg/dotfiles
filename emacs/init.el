;; -*- coding: utf-8 -*-
;; Emacs config
;; Clemens Gruber, 2012

(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;; General
(require 'init-backup)
(require 'init-keys)
(require 'init-snippets)
(require 'init-style)

;; Programming languages
(require 'init-ruby)
;(require 'init-lisp)
;(require 'init-haskell)

(require 'init-misc)

;; The following is added by Emacs automatically
(custom-set-variables
 '(safe-local-variable-values (quote ((encoding . utf-8) (whitespace-line-column . 80) (lexical-binding . t)))))
(custom-set-faces
 )
