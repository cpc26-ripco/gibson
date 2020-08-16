;;; cpc26-defaults.el --- based defaults

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
  "ARG An alias for `y-or-n-p', because I hate having to type 'yes' or 'no'."
  (y-or-n-p arg))
;; Put as much syntax highlighting into documents as possible
(setq font-lock-maximum-decoration t)
(xterm-mouse-mode t)

(message "[✓] Defaults complete.")

(provide 'cpc26-defaults)

;;; cpc26-defaults.el ends here
