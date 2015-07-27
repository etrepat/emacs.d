;;; core-ui.el --- UI tweaks

;;; Commentary:
;;

;;; Code:
;;

;; disable startup screen
(setq inhibit-startup-message t)

;; disable menu
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; no scroll bar
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; display line numbers
(global-linum-mode)

;; highlight current line
(global-hl-line-mode 1)

;; highlight line number
(require 'hlinum)
(hlinum-activate)

;; nice cursor
(setq-default cursor-type 'box)

;; enable y/n answers
(defalias 'yes-or-no-p 'y-or-n-p)

;; full path on title
(setq frame-title-format '(buffer-file-name "%f" ("%b")))

;; meaningful names for buffers with the same name
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)    ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers

;; visible bell
(setq visible-bell t)

;; font face
(set-face-attribute 'default nil
                    :family "Envy Code R"
                    :height 140
                    :weight 'normal :width 'normal)

;; neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; powerline
(require 'powerline)
(powerline-default-theme)

;; theme
(load-theme 'zenburn t)

(provide 'core-ui)
;;; core-ui.el ends here
