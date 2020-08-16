;;; feeds-internet.el --- RSS WEB FEED READS.

;;; Commentary:
;; these are particularly busy:
;;	("http://archive.org/services/collection-rss.php?collection=software" archive)
;;	("http://archive.org/services/collection-rss.php" archive)
;;	("http://archive.org/services/collection-rss.php?collection=opensource_audio" music)



;;; Code:
(require 'elfeed)
(require 'elfeed-goodies)

(elfeed-goodies/setup)

(setq elfeed-feeds
      '(("http://nullprogram.com/feed/" blog emacs)
        ("http://www.50ply.com/atom.xml" blog dev)
        ("http://nedroid.com/feed/" webcomic)
	("https://www.emacswiki.org/emacs?action=rss" emacswiki)
	("https://www.lainchan.org/index.rss" lainchan)
	("https://planet.emacslife.com/atom.xml" planetEmacs)
	("http://threesixty360.wordpress.com/feed/" blog math)
	("http://blog.cryptographyengineering.com/feeds/posts/default" blog)
	("http://abstrusegoose.com/feed.xml" comic)
	("http://accidental-art.tumblr.com/rss" image math)
	("http://english.bouletcorp.com/feed/" comic)
	("http://curiousprogrammer.wordpress.com/feed/" blog dev)
	("http://feeds.feedburner.com/amazingsuperpowers" comic)
	("http://amitp.blogspot.com/feeds/posts/default" blog dev)
	("http://pages.cs.wisc.edu/~psilord/blog/rssfeed.rss" blog)
	("http://www.anticscomic.com/?feed=rss2" comic)
	("https://xkcd.com/atom.xml" comic)
	("http://feeds.feedburner.com/blogspot/TPQSS" blog dev)
	))

;; browse article in gui browser instead of eww
(setq browse-url-browser-function 'eww-browse-url)

(defun cpc26/elfeed-show-visit-gui ()
  "Wrapper for elfeed-show-visit to use gui browser instead of eww"
  (interactive)
  (let ((browse-url-generic-program "/usr/bin/xdg-open"))
    (elfeed-show-visit t)))

(define-key elfeed-show-mode-map (kbd "B") 'cpc26/elfeed-show-visit-gui)

(message "[✓] Feeds configured.")

(provide 'feeds-internet)

;;; feeds-internet.el ends here
