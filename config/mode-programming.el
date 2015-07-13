;;; mode-programming.el --- prog-mode generic configs

;; generic prog-mode defaults & customizations
(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'which-func)
(which-function-mode 1)

(require 'yasnippet)
(yas-global-mode 1)

(require 'rainbow-delimiters) ;; require here, enable per-mode

(defun my-prog-mode-defaults ()
  "Default coding hook, useful with any programming language."
  ;; (enable-flyspell-prog-cond)
  (enable-whitespace-mode)
  (comment-auto-fill)
  (font-lock-comment-annotations))

(setq prog-mode-defaults-hook 'my-prog-mode-defaults)

(add-hook 'prog-mode-hook (lambda ()
                            (run-hooks 'prog-mode-defaults-hook)))

(defvar etrepat/edit-modes
  '(
    mode-elixir
    mode-haskell
    mode-javascript
    mode-markdown
    mode-php
    mode-ruby
    mode-rust
    mode-stylesheets
    mode-web
    mode-yaml)
  "Supported editing modes")

(dolist (p etrepat/edit-modes) (require p))

(provide 'mode-programming)
;;; mode-programming.el ends here
