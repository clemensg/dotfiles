;;; init.el --- Emacs config
;;;
;;; Commentary:
;;;  Clemens Gruber, 2013
;;;

;;; Nota bene:
;;;  No need to call (server-start)
;;;  Server setup takes place elsewhere (zsh)

;; Package management
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
;; My packages
(setq my-required-packages
      (list 'inf-ruby 'magit 'rvm 'solarized-theme))
(dolist (package my-required-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))

;; In case we are in a GUI
(when (display-graphic-p)
  (set-face-attribute 'default nil :font "Inconsolata 12")
  (load-theme 'solarized-light))

;; Better defaults (github.com/technomancy/betterdefaults)
(progn
  ;; Ido-mode: Interactively do (things)
  (ido-mode t)
  (setq ido-enable-flex-matching t)

  ;; Disable Toolbar and Scrollbar (no use in terminals)
  (menu-bar-mode -1)
  (when (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))
  (when (fboundp 'scroll-bar-mode)
    (scroll-bar-mode -1))

  ;; when you visit two files with the same name in different directories, the buffer names have the directory name appended to them instead of the silly hello<2>
  (require 'uniquify)
  (setq uniquify-buffer-name-style 'forward)
  
  ;; save the location of the point when you kill a buffer and returns to it next time you visit the associated file.
  (require 'saveplace)
  (setq-default save-place t)

  ;; replace some key bindings with more powerful equivalents
  (global-set-key (kbd "M-/") 'hippie-expand) ; hippie-expand instead of dabbrev-expand
  (global-set-key (kbd "C-x C-b") 'ibuffer) ; ibuffer instead of list-buffers
  ;; Regex-aware search
  (global-set-key (kbd "C-s") 'isearch-forward-regexp)
  (global-set-key (kbd "C-r") 'isearch-backward-regexp)
  ;; Non-regex-aware search
  (global-set-key (kbd "C-M-s") 'isearch-forward)
  (global-set-key (kbd "C-M-r") 'isearch-backward)

  ;; Show parens
  (show-paren-mode 1)

  ;; No tab indent?
  (setq-default indent-tabs-mode nil)

  ;;    Share kill ring with X clipboard if used under X or Aqua
  (setq x-select-enable-clipboard t
        x-select-enable-primary t
	;; Do not lose internal clipboard (?)
        save-interprogram-paste-before-kill t
	;; Apropos commands perform more extensive searches than default
        apropos-do-all t
	;; Mouse yanking inserts at the point instead of the location of the click
        mouse-yank-at-point t
	;; Save directory
        save-place-file (concat user-emacs-directory "places")
	;; Backups
	backup-by-copying t      ; don't clobber symlinks
        backup-directory-alist `(("." . ,(concat user-emacs-directory
                                                 "backups")))	
	delete-old-versions t
	kept-new-versions 6
	kept-old-versions 2
	version-control t)       ; use versioned backups
)

;; TODO: check out ergoemacs-keybindings

;; Ruby stuff
;;  rvm.el
(require 'rvm)
(rvm-use-default)
(add-hook 'ruby-mode-hook
          (lambda () (rvm-activate-corresponding-ruby)))
;;  ruby-mode filetypes
(add-to-list 'auto-mode-alist
             '("\\.\\(?:gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))

;;  flycheck
;(add-hook 'ruby-mode-hook
;	  (lambda () (flycheck-mode)))
;;   ruby-refactor minor mode
;;(add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)

;; inf-ruby (irb inside emacs)
(add-hook 'after-init-hook 'inf-ruby-switch-setup)

;; Disable SCSS auto compiling
(setq scss-compile-at-save nil)


;;
;; DO NOT EDIT ANYTHING BELOW HERE!
;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
