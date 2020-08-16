;;; k8s-tools.el --- k8s tools.

;;; Commentary:
;;
;; autoloader string
;; # -*- mode: k8s -*-

;;; Code:

(add-hook 'k8s-mode-hook 'yas-minor-mode)

(setq k8s-search-documentation-browser-function 'browse-url-firefox)


(provide 'k8s-tools)

;;; k8s-tools.el ends here
