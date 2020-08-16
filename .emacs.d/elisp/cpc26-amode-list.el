;;; cpc26-amode-list.el --- auto mode alists

;;; Commentary:
;; 

;;; Code:

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(add-to-list 'auto-mode-alist '("\\.org.gpg$" . org-mode))
(add-to-list 'auto-mode-alist '("\\.ref$" . org-mode))
(add-to-list 'auto-mode-alist '("\\.ref.gpg$" . org-mode))
(add-to-list 'auto-mode-alist '("\\.notes$" . org-mode))
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(message "[✓] Automodes complete.")

(provide 'cpc26-amode-list)

;;; cpc26-amode-list.el ends here
