;; Global customisations follow
;; (global-set-key (kbd "C-x <left>")  'windmove-left)
;; (global-set-key (kbd "C-x <right>") 'windmove-right)
;; (global-set-key (kbd "C-x <up>")    'windmove-up)
;; (global-set-key (kbd "C-x <down>")  'windmove-down)
;; 
;; (global-set-key (kbd "C-x C-b") 'ibuffer)
;; (setq line-number-mode t)
;; (setq column-number-mode t)
(desktop-save-mode 1)
(setq desktop-restore-frames t)
;(require 'magit-todos)

;; Sorry, I'm just not cool enough for Guru Mode :P
(setq prelude-guru nil)

;; But I do want to be able to "scroll-in-place"
;; c.f: http://pragmaticemacs.com/emacs/scrolling-and-moving-by-line/
;;keep cursor at same position when scrolling
(setq scroll-preserve-screen-position 1)
;;scroll window up/down by one line
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))
