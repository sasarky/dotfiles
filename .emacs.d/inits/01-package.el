(defvar installing-package-list
  '(
    ; basic
    auto-complete
    init-loader
    magit
    popwin

    ; helm
    helm
    helm-ag
    helm-c-moccur
    helm-descbinds
    helm-gtags
    helm-migemo
    wgrep-helm

    ; language-mode
    php-mode
    coffee-mode

    ))

(let ((not-installed (loop for x in installing-package-list when (not (package-installed-p x)) collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))
