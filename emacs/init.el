;;; Package archive for Emacs Lisp
;(require 'package)
;(add-to-list 'package-archives 
;    '("marmalade" .
;      "http://marmalade-repo.org/packages/"))
;(package-initialize)

;; Use Emacs Starter Kit as default
;(when (not package-archive-contents)
;  (package-refresh-contents))
;(defvar my-packages '(starter-kit starter-kit-ruby)  ; starter-kit-ruby starter-kit-lisp starter-kit-bindings
;  "A list of packages to ensure are installed at launch.")
;(dolist (p my-packages)
;  (when (not (package-installed-p p))
;    (package-install p)))

(load-theme 'adwaita t)

;; Dont clobber my directories with ugly .~ backup files
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

;; Clean up backup files, which have not been accessed in a week
(message "Deleting old backup files...")
(let ((week (* 60 60 24 7))
      (current (float-time (current-time))))
  (dolist (file (directory-files temporary-file-directory t))
    (when (and (backup-file-name-p file)
               (> (- current (float-time (fifth (file-attributes file))))
                  week))
      (message "%s" file)
      (delete-file file))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((encoding . utf-8) (whitespace-line-column . 80) (lexical-binding . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
