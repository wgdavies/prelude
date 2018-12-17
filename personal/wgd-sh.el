;; Set shell-mode editing properly
(add-to-list 'interpreter-mode-alist
	     '("ksh93" . shell-script-mode))

;; Set default shell for [ansi-]term mode
(setq explicit-shell-file-name "/bin/ksh")

