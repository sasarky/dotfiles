(defvar installing-package-list
  '(
    helm
    helm-ag
    helm-c-moccur
    helm-descbinds
    helm-gtags
    helm-migemo
    wgrep-helm
    init-loader
    popwin
    php-mode
    ))

(let ((not-installed (loop for x in installing-package-list when (not (package-installed-p x)) collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))
