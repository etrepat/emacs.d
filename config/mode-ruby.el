;;; mode-ruby.el --- ruby-mode customizations

;;; Commentary:
;;

;;; Code:
;;

;; ruby-mode
(require 'ruby-tools)
(require 'inf-ruby)
(require 'yari)

;; Rake files are ruby, too, as are gemspecs, rackup files, and gemfiles.
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.thor\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rabl\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Thorfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.jbuilder\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Podfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.podspec\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Puppetfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Berksfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Appraisals\\'" . ruby-mode))

(add-to-list 'completion-ignored-extensions ".rbc")

(define-key 'help-command (kbd "R") 'yari)

(defun my-ruby-mode-defaults ()
  "Ruby mode default settings."
  (setq ruby-align-to-stmt-keywords t)
  (inf-ruby-minor-mode +1)
  (ruby-tools-mode +1)
  (subword-mode +1))

(setq ruby-mode-defaults-hook 'my-ruby-mode-defaults)

(add-hook 'ruby-mode-hook (lambda ()
                            (run-hooks ruby-mode-defaults-hook)))

(defalias 'ri 'yari)

(provide 'mode-ruby)
;;; mode-ruby.el ends here
