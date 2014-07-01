; helm
(require 'helm-config)

; setq
(setq helm-for-files-preferred-list
      '(helm-source-buffers-list
        helm-source-bookmarks
        helm-source-recentf
        helm-source-file-cache
        helm-projectile
        helm-source-locate))

; keybinds
;; global-map
(define-key global-map (kbd "C-q") 'helm-mini)
(define-key global-map (kbd "M-x") 'helm-M-x)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)
(define-key global-map (kbd "M-r") 'helm-resume)
(define-key global-map (kbd "C-x C-u") 'helm-for-files)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)

(eval-after-load 'helm
  '(progn
     (define-key helm-map (kbd "C-h") 'delete-backward-char)))

(eval-after-load 'helm-files
  '(progn
     (define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
     (define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
     )
  )

(push '("*helm*") popwin:special-display-config)
