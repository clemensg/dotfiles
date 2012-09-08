;; Flymake (Syntax checking)
; Steve Purcell's great Flymake-for-Ruby config
(add-to-list 'load-path "~/.emacs.d/plugins/flymake-ruby/")
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\.rake$" . ruby-mode))

(eval-after-load 'ruby-mode
  '(progn
       (define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
       (define-key ruby-mode-map (kbd "TAB") 'indent-for-tab-command)))

(add-hook 'ruby-mode-hook 'turn-on-auto-fill)

(provide 'init-ruby)
