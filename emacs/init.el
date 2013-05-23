; Emacs settings
; Clemens Gruber, 2013
;

; Basic settings
(setq
   backup-by-copying t            ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.emacs.d/saves")) ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)             ; use versioned backups

; Package manager
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)
