(set-language-environment "Japanese")

; line number
(global-linum-mode t)
(setq linum-format "%4d ")

;(tool-bar-mode 0)
(setq inhibit-startup-message t)
(setq backup-inhibited t)
(setq delete-auto-save-files t)
(show-paren-mode 1)
(global-font-lock-mode t)
(menu-bar-mode 0)
(display-time-mode 1)

; not backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;;; define key
(global-set-key "\C-z" 'undo)
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key "\C-o" 'toggle-input-method)

(setq-default tab-width 4 indent-tabs-mode nil)

(setq initial-scratch-message "")

; coding
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

; view
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))

(require 'cl)
(fset 'yes-or-no-p 'y-or-n-p)
