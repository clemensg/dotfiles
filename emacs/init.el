;;; init.el --- Emacs config
;;;
;;; Commentary:
;;;  Clemens Gruber, 2013
;;;

;;; Nota bene:
;;;  No need to call (server-start)
;;;  Server setup takes place elsewhere (e.g. function e in .zshrc)

; Save ugly backup files to one place only
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.emacs.d/saves"))   ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

; Package management
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

; My packages
(setq my-required-packages
      (list 'flycheck 'inf-ruby 'rvm 'solarized-theme))
(dolist (package my-required-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))

; TODO: check out ergoemacs-keybindings

; Ruby stuff
;  rvm.el
(add-hook 'ruby-mode-hook
          (lambda () (rvm-activate-corresponding-ruby)))
; flycheck
(add-hook 'ruby-mode-hook
	  (lambda () (flycheck-mode)))
;  ruby-refactor minor mode
;(add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)

; inf-ruby (irb inside emacs)
(inf-ruby-switch-setup)

; Show parens
(show-paren-mode 1)

; Disable SCSS auto compiling
(setq scss-compile-at-save nil)

; Save cursor position in file
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/saved-places")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; In case we are in a GUI
(when (display-graphic-p)
  (set-face-attribute 'default nil :font "Inconsolata 12")
  (load-theme 'solarized-light))
