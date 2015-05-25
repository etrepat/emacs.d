;;; editing.el --- Core editor tweaks

;; enable ido
(require 'ido)
(require 'ido-ubiquitous)

(setq ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-save-directory-list-file (expand-file-name "ido.hist" etrepat/save-dir)
      ido-default-file-method 'selected-window)
(ido-mode t)
(ido-ubiquitous-mode t)

;; smex
(setq smex-save-file (expand-file-name ".smex-items" etrepat/save-dir))
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; saveplace remembers your location in a file when saving files
(require 'saveplace)
(setq save-place-file (expand-file-name "saveplace" etrepat/save-dir))
;; activate it for all buffers
(setq-default save-place t)

;; backup & auto-save prefs... basically not very interested
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
                                               "backups"))))

(setq make-backup-files nil)
(setq auto-save-default nil)

;; minimally useful clipboard
(setq x-select-enable-clipboard t
      x-select-enable-primary t
      mouse-yank-at-point t)

;; basic indentation settings
(setq-default indent-tabs-mode nil)   ;; don't use tabs to indent
(setq-default tab-width 8)            ;; but maintain correct appearance

;; Newline at end of file
(setq require-final-newline t)

;; delete the selection with a keypress
(delete-selection-mode t)

;; compatible selections
(transient-mark-mode t)

;; revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode t)

;; hippie expand is dabbrev expand on steroids
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))

;; smart tab behavior - indent or complete
(setq tab-always-indent 'complete)

;; whitespace settings
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face tabs empty trailing lines-tail))

;; display trailing whitespace
(setq show-trailing-whitespace)

;; (add-hook 'text-mode-hook 'enable-flyspell-cond)
(add-hook 'text-mode-hook 'enable-whitespace-mode)

;; show empty lines
(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

;; enable electric-pair-mode
(show-paren-mode 1)
(electric-pair-mode t)

;; ediff
(require 'ediff)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; misc
(setq save-interprogram-paste-before-kill t
      apropos-do-all t)

;; projectile
(require 'projectile)
(setq projectile-cache-file (expand-file-name  "projectile.cache" etrepat/save-dir))
(projectile-global-mode t) ;; enable globally

;; windmove
(require 'windmove)

;; volatile-highlights - useful visual feedback on region operations
(require 'volatile-highlights)
(volatile-highlights-mode t)

;; anzu-mode enhances isearch & query-replace vim-style
(require 'anzu)
(global-anzu-mode)

;; better undo functionality
(require 'undo-tree)
(setq undo-tree-history-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq undo-tree-auto-save-history t)
(global-undo-tree-mode)

;; expand-region
(require 'expand-region)

;; auto-complete
(require 'auto-complete-config)
(ac-config-default)

(provide 'editing)
;;; editing ends here
