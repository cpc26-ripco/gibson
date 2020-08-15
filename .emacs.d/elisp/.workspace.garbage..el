;;; .workspace.garbage..el --- Hacking is a survival trait.

;;; Commentary:
;; 

;;; Code:
;; my init ----------------------------------------
;; Start with empty scratch buffer
(fset #'display-startup-echo-area-message #'ignore)
(setq inhibit-splash-screen t)
(setq initial-scratch-message "")
;; Default Encoding
(prefer-coding-system 'utf-8-unix)
(set-locale-environment "en_US.UTF-8")
(set-default-coding-systems 'utf-8-unix)
(set-selection-coding-system 'utf-8-unix)
(set-buffer-file-coding-system 'utf-8-unix)
(set-clipboard-coding-system 'utf-8) ; included by set-selection-coding-system
(set-keyboard-coding-system 'utf-8) ; configured by prefer-coding-system
(set-terminal-coding-system 'utf-8) ; configured by prefer-coding-system
(setq buffer-file-coding-system 'utf-8) ; utf-8-unix
(setq save-buffer-coding-system 'utf-8-unix) ; nil
(setq process-coding-system-alist
  (cons '("grep" utf-8 . utf-8) process-coding-system-alist))
;; Replace "yes or no" with y or n
(defun yes-or-no-p (arg)
  "An alias for y-or-n-p, because I hate having to type 'yes' or 'no'."
  (y-or-n-p arg))
;; Put as much syntax highlighting into documents as possible
(setq font-lock-maximum-decoration t)
(xterm-mouse-mode t)
(setq display-time-24hr-format t)
;; theme
(load-theme 'modus-vivendi t)



;; HELM ----------------------------------------
(helm-mode 1)
(helm-autoresize-mode t)
(setq helm-M-x-fuzzy-match t)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)
(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match    t)
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

(require 'modes-settings)
(require 'ui-settings)
(require 'prog-settings)
(require 'key-bindings)

(provide '.workspace.garbage..el)

;;; .workspace.garbage..el ends here
