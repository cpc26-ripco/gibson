;;; ui-settings.el --- styles.

;;; Commentary:
;; 

;; UI ----------------------------------------
;;; convert ansi code like in scratch
;;; Code:

(defun cpc26-ansi ()
  "Convert the ANSI codes to faces."
  (interactive)
  (ansi-color-apply-on-region (point-min) (point-max)))
;;; quiet bell
(setq ring-bell-function
      (lambda ()
        (let ((orig-fg (face-foreground 'mode-line)))
          (set-face-foreground 'mode-line "#F2804F")
          (run-with-idle-timer 0.1 nil
                               (lambda (fg) (set-face-foreground 'mode-line fg))
                               orig-fg))))
;;; numbers
;;(global-display-line-numbers-mode)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
;;;; Emballage de ligne d'entreprise
(global-visual-line-mode 1)
(setq line-move-visual t)
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))
;;; icons
(require 'all-the-icons)
(all-the-icons-ibuffer-mode 1)
;;; eshell
(eshell-git-prompt-use-theme 'powerline)
;;; modeline
(sml/setup)
;;;; Company mode
(setq company-idle-delay 0.3)
(add-hook 'after-init-hook 'global-company-mode)
(require 'company-box)
(add-hook 'company-mode-hook 'company-box-mode)
(company-box-icons-resize 32)

(message "[✓]  UI complete.")

(provide 'ui-settings)

;;; ui-settings.el ends here
