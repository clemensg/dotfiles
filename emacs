;;; Emacs config
;; Clemens Gruber, 2015
;;

; In case we are in a GUI
(when (display-graphic-p)
  (set-face-attribute 'default nil :font "Source Code Pro 16"))

; Disable backup
(setq backup-inhibited t)

; Disable auto save
(setq auto-save-default nil)
