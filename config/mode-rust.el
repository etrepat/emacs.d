;;; mode-rust.el --- rust-mode customizations

;; rust-mode
(require 'rust-mode)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-to-list 'ac-modes 'rust-mode)

(defun my-rust-mode-defaults ())

(setq rust-mode-defaults-hook 'my-rust-mode-defaults)

(add-hook 'rust-mode-hook (lambda ()
                            (run-hooks 'rust-mode-defaults-hook)))

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(provide 'mode-rust)
;;; mode-rust.el ends here
