;;; modes-settings.el --- Start the toolsmithing.
;; Modes and Settings

;;; Commentary:
;; 

;;; Code:

(semantic-mode 1)
(desktop-save-mode 1)
(electric-pair-mode 1)
;;; Ibuffer
(require 'ibuffer-git)
(defalias 'list-buffers 'ibuffer) ; make ibuffer default
(setq ibuffer-default-sorting-mode 'major-mode)
(add-hook 'ibuffer-mode-hook (lambda () (ibuffer-auto-mode 1)))
;; Use human readable Size column instead of original one
(add-hook 'ibuffer-hook
	  (lambda ()
	    (setq ibuffer-formats
		  '((mark modified read-only git-status-mini " "
			  (name 18 18 :left :elide)
			  " "
			  (size 9 -1 :right)

			  " "
			  (mode 16 16 :left :elide)
			  " "
			  (git-status 8 8 :left)
			  " "
			  vc-relative-file)))
	    (ibuffer-projectile-set-filter-groups)
	    (ibuffer-vc-set-filter-groups-by-vc-root)
	    (unless (eq ibuffer-sorting-mode 'alphabetic)
	      (ibuffer-do-sort-by-alphabetic))))

(provide 'modes-settings)

;;; modes-settings.el ends here
