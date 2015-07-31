;;; mode-php.el --- php-mode customizations

;;; Commentary:
;;

;;; Code:
;;

;; php-mode
(require 'php-mode)
(require 'php-doc)

(c-add-style
 "laravel"
 '("php"
   (c-basic-offset . 2)
   (c-offsets-alist . ((statement-cont . +)))
   (c-indent-comments-syntactically-p t)))

(defun my-php-mode-defaults ()
  "My PHP mode defaults."
  (setq php-template-compatibility nil
        php-lineup-cascaded-calls t
        whitespace-line-column 120
        electric-pair-pairs '(
                              (?\{ . ?\})
                              ))
  (c-set-style "laravel")
  (subword-mode +1)
  ;; (add-to-list 'ac-sources 'ac-php-func-source)
  (rainbow-delimiters-mode +1)
  (local-set-key (kbd "M-P") 'php-insert-doc-block))

(setq php-mode-defaults-hook 'my-php-mode-defaults)

(add-hook 'php-mode-hook (lambda ()
                           (run-hooks 'php-mode-defaults-hook)))

(provide 'mode-php)
;;; mode-php.el ends here
