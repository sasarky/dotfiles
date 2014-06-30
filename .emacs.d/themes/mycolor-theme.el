(deftheme mycolor "This is Mycolor")

(custom-theme-set-faces
 'mycolor
 `(cursor ((t (:foreground "#F8F8F0"))))
 `(default ((t (:background "Black" :foreground "#F8F8F2"))))
 
 `(link ((t (:foreground , "#F0DFAF" :weight bold))))
 `(highlight ((t (:foreground "#E37170" :background "#332323"))))
 `(region ((t (:foreground "#71d3b4" :background "#233323"))))

 ; font-lock
 `(font-lock-builtin-face ((t (:foreground "#DCDCCC" :weight bold))))
 `(font-lock-comment-face ((t (:foreground "#808080"))))
 `(font-lock-constant-face ((t (:foreground "#7F9F7F"))))
 `(font-lock-doc-face ((t (:foreground "#7F9F7F"))))
 `(font-lock-function-name-face ((t (:foreground "#93E0E3"))))
 `(font-lock-keyword-face ((t (:foreground "#F0DFAF" :weight bold))))
 `(font-lock-negation-char-face ((t (:foreground "#F0DFAF" :weight bold))))
 `(font-lock-preprocessor-face ((t (:foreground "#8CD0D3"))))
 `(font-lock-regexp-grouping-construct ((t (:foreground "#F0DFAF" :weight bold))))
 `(font-lock-regexp-grouping-backslash ((t (:foreground "#7F9F7F" :weight bold))))
 `(font-lock-string-face ((t (:foreground "#CC9393"))))
 `(font-lock-type-face ((t (:foreground "#CC9393"))))
 `(font-lock-variable-name-face ((t (:foreground "#DFAF8F"))))
 `(font-lock-warning-face ((t (:foreground "#808080"))))
)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'mycolor)
