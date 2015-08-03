;;; mode-elixir.el --- elixir-mode customizations

;;; Commentary:
;;

;;; Code:
;;

;; elixir-mode
(require 'company)
(require 'ruby-end)
(require 'elixir-mode)
(require 'alchemist)

(defun my-elixir-mode-defaults ()
  "My elixir mode default settings."
  (subword-mode +1)
  (rainbow-delimiters-mode +1)
  (company-mode +1)
  (diminish 'company-mode "Co")
  (setq company-idle-delay 0.1
        company-tooltip-limit 10
        company-minimum-prefix-length 2
        company-tooltip-flip-when-above t)
  (set (make-variable-buffer-local 'ruby-end-expand-keywords-before-re)
       "\\(?:^\\|\\s-+\\)\\(?:do\\)")
  (set (make-variable-buffer-local 'ruby-end-check-statement-modifiers) nil)
  (ruby-end-mode +1)
  (diminish 'ruby-end-mode))

(setq elixir-mode-defaults-hook 'my-elixir-mode-defaults)

(add-hook 'elixir-mode-hook (lambda ()
                              (run-hooks 'elixir-mode-defaults-hook)))

(provide 'mode-elixir)
;;; mode-elixir.el ends here
