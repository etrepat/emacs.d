;;; programming.el --- prog-mode generic confgs

;; generic prog-mode defaults & customizations
(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'which-func)
(which-function-mode 1)

(require 'yasnippet)
(yas-global-mode 1)

(defun my-prog-mode-defaults ()
  "Default coding hook, useful with any programming language."
  ;; (enable-flyspell-prog-cond)
  (enable-whitespace-mode)
  (comment-auto-fill)
  (font-lock-comment-annotations))

(setq prog-mode-defaults-hook 'my-prog-mode-defaults)

(add-hook 'prog-mode-hook (lambda ()
                            (run-hooks 'prog-mode-defaults-hook)))

;; web-mode
(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.blade\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist
             '("/\\(views\\|html\\|theme\\|templates\\)/.*\\.php\\'" . web-mode))

(defun my-web-mode-defaults ())

(setq web-mode-defaults-hook 'my-web-mode-defaults)

(add-hook 'web-mode-hook (lambda ()
                           (run-hooks 'web-mode-defaults-hook)))

;; php-mode
(require 'php-mode)

(defun my-php-mode-defaults ()
  (setq php-template-compatibility nil)
  (subword-mode +1))

(setq php-mode-defaults-hook 'my-php-mode-defaults)

(add-hook 'php-mode-hook (lambda ()
                           (run-hooks 'php-mode-defaults-hook)))


;; markdown-mode
(require 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.markdown\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.mdown\\'" . gfm-mode))

(defun my-markdown-mode-defaults ())

(setq markdown-mode-defaults-hook 'my-web-mode-defaults)

(add-hook 'markdown-mode-hook (lambda ()
                                (run-hooks 'markdown-mode-defaults-hook)))

;; js-mode
(require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'"    . js2-mode))
(add-to-list 'auto-mode-alist '("\\.pac\\'"   . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(defun my-js-mode-defaults ()
  (setq mode-name "JS2")
  (js2-imenu-extras-mode +1))

(setq js-mode-defaults-hook 'my-js-mode-defaults)

(add-hook 'js2-mode-hook (lambda ()
                           (run-hooks 'js-mode-defaults-hook)))

(provide 'programming)
;;; programming.el ends here
