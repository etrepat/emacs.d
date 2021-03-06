;;; mode-haskell.el --- haskell customizations

;;; Commentary:
;;

;;; Code:
;;

;; haskell-mode
(require 'haskell-mode)

(defun my-haskell-mode-defaults ()
  "My Haskell mode default settings."
  (subword-mode +1)
  (turn-on-haskell-doc-mode)
  (turn-on-haskell-indentation)
  (interactive-haskell-mode +1))

(setq haskell-mode-defaults-hook 'my-haskell-mode-defaults)

(add-hook 'haskell-mode-hook (lambda ()
                            (run-hooks 'haskell-mode-defaults-hook)))

(provide 'mode-haskell)
;;; mode-haskell.el ends here
