;; Styling
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/solarized")
(load-theme 'solarized-light t)

;; 18pt font
(custom-set-faces
 '(default ((t (:height 180 :family "Bitstream Vera Sans Mono")))))

(provide 'init-style)
