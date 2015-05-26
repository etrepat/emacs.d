;;; core-keybindings.el -- Global keybindings

;; use custom move-beginning-of-line
(global-set-key [remap move-beginning-of-line]
                'better-move-beginning-of-line)

;; [RET] inserts a new and indents
(global-set-key (kbd "RET") 'newline-and-indent)

;; hippie expand
(global-set-key (kbd "M-/") 'hippie-expand)

;; ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; search
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

(global-set-key (kbd "M-%") 'anzu-query-replace)
(global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)

;; C-+/C-- scales font size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; Window switching. (C-x o goes to the next window)
(global-set-key (kbd "C-x O") (lambda ()
                                 (interactive)
                                 (other-window -1))) ;; back one

;; toggle comment
(global-set-key (kbd "C-;") 'toggle-comment-on-line-or-region)

;; kill-whole remap to custom function
(global-set-key [remap kill-line] 'kill-whole-line-with-indentation)
(global-set-key (kbd "C-S-k") 'kill-line)

;; windmove keybindings
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; magit keybinding
(global-set-key (kbd "C-x g") 'magit-status)

;; toggle menu-bar visibility
(global-set-key (kbd "<f12>") 'menu-bar-mode)

;; expand-region
(global-set-key (kbd "C-=") 'er/expand-region)

;; multiple cursors
(global-set-key (kbd "C-c C-S-l") 'mc/edit-lines)
(global-set-key (kbd "C-c C-S-n") 'mc/mark-next-line-like-this)
(global-set-key (kbd "C-c C-S-p") 'mc/mark-previous-line-like-this)
(global-set-key (kbd "C-c C-S-n") 'mc/mark-all-like-this)

(provide 'core-keybindings)
;;; core-keybindings.el ends here
