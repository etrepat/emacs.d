;;; mode-stylesheets.el --- css, scss, less customizations

(require 'rainbow-mode)

;; css
(defun my-css-mode-defaults ()
  (setq css-indent-offset 2)
  (rainbow-mode +1)
  (run-hooks 'prog-mode-defaults-hook))

(setq css-mode-defaults-hook 'my-css-mode-defaults)

(add-hook 'css-mode-hook (lambda ()
                           (run-hooks 'css-mode-defaults-hook)))

;; scss
(require 'scss-mode)

(defun my-scss-mode-defaults ()
  (setq scss-compile-at-save nil)
  (my-css-mode-defaults))

(setq scss-mode-defaults-hook 'my-scss-mode-defaults)

(add-hook 'scss-mode-hook (lambda ()
                            (run-hooks 'scss-mode-defaults-hook)))

(provide 'mode-stylesheets)
;;; mode-stylesheets.el ends here
