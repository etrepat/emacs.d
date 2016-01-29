;;; mode-fsharp.el --- fsharp-mode customizations

;;; Commentary:
;;

;;; Code:
;;

;; fsharp-mode
(require 'fsharp-mode)

(defun my-fsharp-mode-defaults ()
  "My F# mode default settings.")

(setq fsharp-mode-defaults-hook 'my-fsharp-mode-defaults)

(add-hook 'fsharp-mode-hook (lambda ()
                            (run-hooks 'fsharp-mode-defaults-hook)))

(provide 'mode-fsharp)
;;; mode-fsharp.el ends here
