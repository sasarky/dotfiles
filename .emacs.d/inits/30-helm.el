;;; helm
(require 'helm-config)
(helm-descbinds-mode)
(require 'helm-migemo)
(setq helm-use-migemo t)

;;; keybinds
;(define-key helm-map (kbd "C-h") 'delete-backward-char)
;(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
;(define-key global-map (kbd "C-x C-f") 'helm-find-files)
;(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
;(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

(define-key global-map (kbd "C-x b") 'my-helm)
(define-key global-map (kbd "M-x") 'helm-M-x)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)
(define-key global-map (kbd "M-r") 'helm-resume)

(push '("^\*helm .+\*$" :regexp t) popwin:special-display-config)
