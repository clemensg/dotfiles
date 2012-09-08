;; Keybindings
; Autocompletion
(global-set-key "\M- " 'hippie-expand)
(setq hippie-expand-try-functions-list
      '(try-complete-file-name-partially
        try-complete-file-name
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill))

; Return + Indentation
(define-key global-map (kbd "RET") 'newline-and-indent)

(provide 'init-keys)
