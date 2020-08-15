;;; key-bindings.el --- Global and mode keybindings.

;;; Commentary:
;; 


;;; Code:
;; GLOBAL KEY BINDINGS
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-c A") 'cpc26-ansi)
(global-set-key (kbd "C-<tab>") 'company-complete)
(global-set-key (kbd "H-f") 'treemacs)
;; MODE KEY BINDINGS
(define-key ibuffer-mode-map (kbd "H-p") 'ibuffer-projectile-set-filter-groups)
(define-key ibuffer-mode-map (kbd "H-g") 'ibuffer-vc-set-filter-groups-by-vc-root)


(provide 'key-bindings)

;;; key-bindings.el ends here
