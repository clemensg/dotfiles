;; init.el
;; Emacs config
;; Clemens Gruber, 2012

;;; Styling
(load-theme 'adwaita t)

;; Keybindings
;;; Autocompletion
(global-set-key "\M- " 'hippie-expand)

;; Dont clobber my directories with ugly backup files
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

;; Haskell-Mode
(load "~/.emacs.d/haskell-mode/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

;; Added by emacs automatically
(custom-set-variables
 '(safe-local-variable-values (quote ((encoding . utf-8) (whitespace-line-column . 80) (lexical-binding . t)))))
(custom-set-faces
 )
