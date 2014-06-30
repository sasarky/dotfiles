(deftheme mycolor "This is Mycolor")

(custom-theme-set-faces
 'mycolor
 `(cursor ((t (:foreground "#F8F8F0"))))
 `(default ((t (:background "Black" :foreground "#F8F8F2"))))
 
 `(link ((t (:foreground , "#F0DFAF" :weight bold))))
 `(highlight ((t (:foreground "#E37170" :background "#332323"))))
 `(region ((t (:foreground "#71d3b4" :background "#233323"))))

 `(font-lock-function-name-face ((t (:foreground "#93E0E3"))))
 `(font-lock-variable-name-face ((t (:foreground "#DFAF8F"))))
 `(font-lock-string-face ((t (:foreground "#CC9393"))))
 `(font-lock-keyword-face ((t (:foreground "#F0DFAF"))))
 `(font-lock-builtin-face ((t (:foreground "#DCDCCC"))))

 `(font-lock-comment-face ((t (:foreground "#709080"))))
 `(font-lock-warning-face ((t (:foreground "#709080"))))

)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'mycolor)
