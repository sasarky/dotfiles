(deftheme mycolor "This is Mycolor")

(custom-theme-set-faces
 'mycolor
 ; basic
 `(cursor ((t (:foreground "#F8F8F0"))))
 `(default ((t (:background "Black" :foreground "#F8F8F2"))))
 `(highlight ((t (:foreground "#E37170" :background "#332323"))))
 `(linum ((t (:foreground , "#808080"))))
 `(link ((t (:foreground , "#F0DFAF" :weight bold))))
 `(region ((t (:background "##4F4F4F" :inverse-video t))))
 `(mode-line ((t (:foreground "#acbc90" :background "#1e2320" :box (:color "#1e2320" :line-width 2)))))
 `(mode-line-inactive ((t (:background "#2e3330" :foreground "#88b090" :box (:color "#2e3330" :line-width 2)))))
 `(mode-line-buffer-id ((t (:foreground "#f0dfaf" :weight bold))))
 `(minibuffer-prompt ((t (:foreground "#f0dfaf"))))
 `(Buffer-menu-buffer ((t (:inherit :foreground "#f0dfaf" :weight bold))))

 ; font-lock
 `(font-lock-builtin-face ((t (:foreground "#DCDCCC" :weight bold))))
 `(font-lock-comment-face ((t (:foreground "#808080"))))
 `(font-lock-constant-face ((t (:foreground "#7F9F7F"))))
 `(font-lock-doc-face ((t (:foreground "#7F9F7F"))))
 `(font-lock-function-name-face ((t (:foreground "#5F7F5F"))))
 `(font-lock-keyword-face ((t (:foreground "#F0DFAF" :weight bold))))
 `(font-lock-negation-char-face ((t (:foreground "#F0DFAF" :weight bold))))
 `(font-lock-preprocessor-face ((t (:foreground "#8CD0D3"))))
 `(font-lock-regexp-grouping-construct ((t (:foreground "#F0DFAF" :weight bold))))
 `(font-lock-regexp-grouping-backslash ((t (:foreground "#7F9F7F" :weight bold))))
 `(font-lock-string-face ((t (:foreground "#CC9393"))))
 `(font-lock-type-face ((t (:foreground "#CC9393"))))
 `(font-lock-variable-name-face ((t (:foreground "#DFAF8F"))))
 `(font-lock-warning-face ((t (:foreground "#808080"))))

 ; helm
 `(helm-header ((t (:foreground "#7F9F7F" :background "Black" :underline nil :box nil))))
 `(helm-source-header ((t (:foreground "#F0DFAF" :background "Black" :underline nil :weight bold :box (:line-width -1 :style released-button)))))
 `(helm-selection ((t (:background "#505050" :underline nil))))
 `(helm-selection-line ((t (:background "#505050"))))
)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'mycolor)
