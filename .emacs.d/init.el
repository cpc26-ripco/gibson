;;; .init --- Emacs init file.

;;; Commentary:
;;
(message "[✓] Start Emacs.")
;;; Code:
;;----------------------------------------
(add-to-list 'load-path "~/.emacs.d/elisp/")
;;; Tune the GC
;; The default settings are too conservative on modern machines making Emacs
;; spend too much time collecting garbage in alloc-heavy code.
(setq gc-cons-threshold (* 4 1024 1024))
(setq gc-cons-percentage 0.3)
(setq read-process-output-max (* 1024 1024)) ;; 1mb

;;; Use the package managers. ----------------------------------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
;;; Grab env from shell right away.
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elfeed-goodies/entry-pane-position (quote bottom))
 '(elfeed-show-entry-delete (quote elfeed-goodies/delete-pane))
 '(elfeed-show-entry-switch (quote elfeed-goodies/switch-pane))
 '(package-selected-packages
   (quote
    (turing-machine chess k8s-mode kubernetes magit flycheck dap-mode lsp-treemacs dockerfile-mode yasnippet lsp-ui exec-path-from-shell elfeed-goodies elfeed ibuffer-vc projectile-speedbar ibuffer-tramp ibuffer-projectile ibuffer-git treemacs company-box company yaml-mode docker lsp-docker smart-mode-line rainbow-delimiters helm slime restclient which-key eshell-git-prompt elpher modus-vivendi-theme all-the-icons-ibuffer all-the-icons)))
 '(safe-local-variable-values (quote ((url-max-redirections . 0))))
 '(show-paren-mode t)
 '(sql-connection-alist
   (quote
    (("localhost"
      (sql-product
       (quote postgres))
      (sql-user "cpc26")
      (sql-database "cpc26")
      (sql-server "localhost")))))
 '(tool-bar-mode nil)
 '(tool-bar-position (quote bottom))
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code" :foundry "CTDB" :slant normal :weight normal :height 139 :width normal)))))

(require '.workspace.garbage..el)

;; emacs server
(server-start)

(message "---------- Emacs startup time: %s ----------" (emacs-init-time))
(message "---------- [✓]   Start Hacking.            ----------")
(message "Desktop restoring.\n\n")

(provide 'init)

;;; init ends here
