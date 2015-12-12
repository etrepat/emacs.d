;;; mode-rust.el --- rust-mode customizations

;;; Commentary:
;;

;;; Code:
;;

;; rust-mode
(require 'rust-mode)
(require 'racer)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(defun my-rust-mode-defaults ()
  "My rust mode default settings."
  (racer-mode +1))

(setq rust-mode-defaults-hook 'my-rust-mode-defaults)

(add-hook 'rust-mode-hook (lambda ()
                            (run-hooks 'rust-mode-defaults-hook)))

(add-hook 'racer-mode-hook #'eldoc-mode)

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(provide 'mode-rust)
;;; mode-rust.el ends here
