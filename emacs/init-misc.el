;; Elisp
(autoload 'turn-on-pretty-mode "pretty-mode")
;; Byte-compile elisp on save?
;(defun maybe-byte-compile ()
;  (when (and (eq major-mode 'emacs-lisp-mode)
;	     buffer-file-name
;	     (string-match "\\.el$" buffer-file-name)
;	     (not (string-match "\\.dir-locals.el$" buffer-file-name)))
;    (save-excursion (byte-compile-file buffer-file-name))))
;(add-hook 'after-save-hook 'maybe-byte-compile)

;; CoffeeScript
(add-to-list 'load-path "~/.emacs.d/plugins/coffee-mode/")
(require 'coffee-mode)

;; Fill mode (Auto line breaks)
(setq-default fill-column 80)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

(provide 'init-misc)
