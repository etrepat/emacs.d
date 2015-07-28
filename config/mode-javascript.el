;;; mode-javascript.el --- javascript-mode customizations

;;; Commentary:
;;

;;; Code:
;;

;; js-mode
(require 'js2-mode)
(require 'json-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'"    . js2-mode))
(add-to-list 'auto-mode-alist '("\\.es6\\'"   . js2-mode))
(add-to-list 'auto-mode-alist '("\\.pac\\'"   . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(defun my-js-mode-defaults ()
  "My javascript default settings."
  (setq mode-name "JS2"
        js2-basic-offset 2
        js2-bounce-indent-p nil
        js-indent-level 2)
  (js2-imenu-extras-mode +1)
  (ac-js2-mode)
  (subword-mode +1)
  (rainbow-delimiters-mode +1))

(setq js-mode-defaults-hook 'my-js-mode-defaults)

(add-hook 'js2-mode-hook (lambda ()
                           (run-hooks 'js-mode-defaults-hook)))

(provide 'mode-javascript)
;;; mode-javascript.el ends here
