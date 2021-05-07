
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
;;(elpy-enable) ;; considerably slows boot

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files nil)
 '(package-selected-packages (quote (## magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; for setting the dark draculat theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/dracula")
(load-theme 'dracula t)
;; enabling upcasing/downcasing
;; usage: C-x C-u
;;        C-x C-l
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
;; useful shortcuts
(global-set-key (kbd "C-c l") 'org-store-link) ; 
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
;; for resizing inline images
(setq org-image-actual-width nil)
;; browser setup
(require 'w3m-load)
;; adding line number display for all files:
(global-linum-mode 1)
;; improving performance by turning off linum-mode
;; because it conflicts with org-mode capture
;; and makes it unbearably slow
(add-hook 'org-mode-hook 
          (lambda () 
            (linum-mode -1)))
;; opening org mode with auto-fill
(add-hook 'org-mode-hook 'turn-on-auto-fill)
;; to install packages like magit from the melpa archive
;; using stable because i would not like my emacs to break
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

