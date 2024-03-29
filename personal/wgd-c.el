;;; prelude-c.el --- Emacs Prelude: cc-mode configuration.
;;
;; Copyright © 2011-2018 Bozhidar Batsov
;;
;; Author: Bozhidar Batsov <bozhidar@batsov.com>
;; URL: https://github.com/bbatsov/prelude
;; Version: 1.0.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Some basic configuration for cc-mode and the modes derived from it.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(require 'prelude-programming)

(defun prelude-c-mode-common-defaults ()
  (setq c-default-style "bsd"
        c-basic-offset 4)
  (c-set-offset 'substatement-open 0))
(setq-default indent-tabs-mode nil)

(setq prelude-c-mode-common-hook 'prelude-c-mode-common-defaults)

;; this will affect all modes derived from cc-mode, like
;; java-mode, php-mode, etc
(add-hook 'c-mode-common-hook (lambda ()
                                (run-hooks 'prelude-c-mode-common-hook)))

(defun prelude-makefile-mode-defaults ()
  (whitespace-toggle-options '(tabs))
  (setq indent-tabs-mode nil ))

(setq prelude-makefile-mode-hook 'prelude-makefile-mode-defaults)

(add-hook 'makefile-mode-hook (lambda ()
                                (run-hooks 'prelude-makefile-mode-hook)))
(provide 'prelude-c)

;; Hooks for CLang
(require 'clang-format)
(setq exec-path (append exec-path '("/opt/homebrew/bin/clang-format")))
(global-set-key [C-M-tab] 'clang-format-region)
;; 
;; (require 'clang-format)
;; (global-set-key (kbd "C-c i") 'clang-format-region)
;; (global-set-key (kbd "C-c u") 'clang-format-buffer)
(setq clang-format-style-option "llvm")

;; Hide/unhide functions
;; https://github.com/bbatsov/prelude/issues/786
(add-hook 'prog-mode-hook 'hs-minor-mode)
;; (defun hide-level-1 ()
  ;; (interactive)
  ;; (hs-hide-level 1))
;; 
;; (defun hide-level-2 ()
  ;; (interactive)
  ;; (hs-hide-level 2))
;; 
;; (defun hide-level-3 ()
  ;; (interactive)
  ;; (hs-hide-level 3))
;; 
;; (evil-leader/set-key "f1" 'hide-level-1)
;; (evil-leader/set-key "f2" 'hide-level-2)
;; (evil-leader/set-key "f3" 'hide-level-3)

;;; prelude-c.el ends here
