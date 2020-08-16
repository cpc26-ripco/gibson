;;; key-bindings.el --- Global and mode keybindings.

;;; Commentary:
;; 


;;; Code:
;; HELM KEY BINDINGS
(define-key global-map [remap find-file] 'helm-find-files)
(define-key global-map [remap occur] 'helm-occur)
(define-key global-map [remap list-buffers] 'helm-buffers-list)
(define-key global-map [remap dabbrev-expand] 'helm-dabbrev)
(define-key global-map [remap execute-extended-command] 'helm-M-x)
(global-set-key (kbd "M-x") 'undefined)
(global-set-key "\C-x\C-m" 'helm-M-x)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
;; GLOBAL KEY BINDINGS
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-c A") 'cpc26-ansi)
(global-set-key (kbd "C-<tab>") 'company-complete)
(global-set-key (kbd "H-f") 'treemacs)
(defalias 'list-buffers 'ibuffer) ; make ibuffer default
(global-set-key (kbd "C-x g") 'magit-status)
;; MODE KEY BINDINGS
(define-key ibuffer-mode-map (kbd "H-p") 'ibuffer-projectile-set-filter-groups)
(define-key ibuffer-mode-map (kbd "H-g") 'ibuffer-vc-set-filter-groups-by-vc-root)

(message "[✓] Key Bindings complete.")

(provide 'key-bindings)

;;; key-bindings.el ends here
