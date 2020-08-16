;;; prog-settings.el --- PROG

;;; Commentary:
;; 


;;; Code:

;; MAGIT
(setq magit-wip-mode t)

;; PROG ----------------------------------------
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")
;;; SLIME
;; (setq slime-company-completion 'fuzzy)
;; (slime-setup '(slime-asdf
;; 	       slime-autodoc
;; 	       slime-company
;; 	       slime-editing-commands
;; 	       slime-fancy-inspector
;; 	       slime-fancy-trace
;; 	       slime-fontifying-fu
;; 	       slime-fuzzy
;; 	       slime-package-fu
;; 	       slime-references
;; 	       slime-repl
;; 	       slime-trace-dialog
;; 	       slime-xref-browser))

;; LSP
(setq lsp-print-io nil)
(setq lsp-idle-delay 0.500)
(setq lsp-render-markdown-markup-content #'render-markup-content)
(setq lsp-completion-provider :capf)
;;; lsp-ui
(require 'lsp-ui)
(setq lsp-ui-sideline-show-diagnostics t) ;show diagnostics messages in sideline
(setq lsp-ui-sideline-show-hover t) ;show hover messages in sideline
(setq lsp-ui-sideline-show-code-actions t) ;show code actions in sideline
(setq lsp-ui-sideline-ignore-duplicate t)
(setq lsp-ui-doc-enable t) ;enable lsp-ui-doc
(setq lsp-ui-doc-position 'bottom) ;Where to display the doc
(setq lsp-ui-doc-delay .5) ;Number of seconds before showing the doc
(setq lsp-ui-sideline-update-mode 'point) ;When set to 'line' the information will be updated when user changes current line
					;otherwise the information will be updated when user changes current point
(setq lsp-ui-sideline-delay .5) ;seconds to wait before showing sideline
(setq lsp-ui-peek-enable t) ;enable ‘lsp-ui-peek’
(setq lsp-ui-peek-show-directory t) ;show the directory of files
(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
;; (lsp-ui-peek-jump-backward)
;; (lsp-ui-peek-jump-forward)
(setq lsp-modeline-code-actions-segments '(count icon name))
(setq lsp-headerline-breadcrumb-segment '(project file symbols))
(lsp-treemacs-sync-mode 1)
;;; LSP DAP
(require 'dap-node)
;;; LSP Hooks
(with-eval-after-load 'lsp-mode
  ;; :project/:workspace/:file
  (setq lsp-modeline-diagnostics-scope :project))
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(add-hook 'lsp-mode-hook 'lsp-headerline-breadcrumb-mode)
(add-hook 'js2-mode-hook #'lsp)
(add-hook 'javascript-mode #'lsp)
(add-hook 'javaScript-mode-hook #'lsp)
(add-hook 'css-mode-hook #'lsp)
(add-hook 'sh-mode-hook #'lsp)
(add-hook 'web-mode-hook #'lsp)
(add-hook 'json-mode-hook #'lsp)
(add-hook 'sql-mode #'lsp)
(add-hook 'dockerfile-mode #'lsp)
;;; Flycheck Syntax checker
(add-hook 'after-init-hook #'global-flycheck-mode)

(message "[✓]  PROG complete.")

(provide 'prog-settings)

;;; prog-settings.el ends here
