(use-package emacs
  :config
  (load-theme 'wheatgrass))
;; Already declated in the init file. This second invocation is
;; merged with the first.
(use-package paren
  :custom
  (show-paren-style 'expression)
  ;; This ingerits from show-paren-match face
  (show-paren-match-expression '((t (:inverse-video t))))
  :config
  ;; priorize region overlay
  (defadvice show-paren-function (around inhibit-in-region activate)
    (if (region-active-p)
	(progn
          (delete-overlay show-paren--overlay)
          (delete-overlay show-paren--overlay-1))
      ad-do-it)))
