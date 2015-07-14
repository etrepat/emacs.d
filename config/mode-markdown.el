;;; mode-markdown.el --- markdown mode customizations

;;; Commentary:
;;

;;; Code:
;;

;; markdown-mode
(require 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.markdown\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.mdown\\'" . gfm-mode))

(defun my-markdown-mode-defaults ())

(setq markdown-mode-defaults-hook 'my-web-mode-defaults)

(add-hook 'markdown-mode-hook (lambda ()
                                (run-hooks 'markdown-mode-defaults-hook)))

(provide 'mode-markdown)
;;; mode-markdown.el ends here
