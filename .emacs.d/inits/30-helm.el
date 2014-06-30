; helm
(require 'helm-config)
(helm-descbinds-mode)
(require 'helm-projectile)

; setq
(setq helm-for-files-preferred-list
      '(helm-source-buffers-list
        helm-source-bookmarks
        helm-source-recentf
        helm-source-file-cache
        helm-projectile
        helm-source-locate))

; keybinds
(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key global-map (kbd "M-x") 'helm-M-x)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)
(define-key global-map (kbd "M-r") 'helm-resume)
(define-key global-map (kbd "C-x C-f") 'helm-projectile)
(define-key global-map (kbd "C-x C-u") 'helm-for-files)

(eval-after-load "helm-files"
  '(setq helm-for-files-preferred-list (delete 'helm-source-locate helm-for-files-preferred-list)))

(push '("*helm*") popwin:special-display-config)
