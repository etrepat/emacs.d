;;; mode-elixir.el --- elixir-mode customizations

;; elixir-mode
(require 'elixir-mode)
(require 'alchemist)

(defun my-elixir-mode-defaults ())

(setq elixir-mode-defaults-hook 'my-elixir-mode-defaults)

(add-hook 'elixir-mode-hook (lambda ()
                            (run-hooks elixir-mode-defaults-hook)))

(provide 'mode-elixir)
;;; mode-elixir.el ends here
