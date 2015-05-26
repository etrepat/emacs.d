;;; mode-yaml.el --- yaml-mode customizations

;; yaml-mode
(require 'yaml-mode)

(defun my-yaml-mode-defaults ()
  (enable-whitespace-mode)
  (subword-mode +1))

(setq yaml-mode-defaults-hook 'my-yaml-mode-defaults)

(add-hook 'yaml-mode-hook (lambda ()
                            (run-hooks 'yaml-mode-defaults-hook)))

(add-hook 'yaml-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'whitespace-cleanup nil t)))

(provide 'mode-yaml)
;;; mode-yaml.el ends here
