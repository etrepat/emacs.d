;;; packages.el --- Package repositories and selection.

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar etrepat/packages
  '(
    anzu
    auto-complete
    expand-region
    flycheck
    gitattributes-mode
    gitconfig-mode
    gitignore-mode
    ido-ubiquitous
    js2-mode
    json-mode
    magit
    markdown-mode
    php-mode
    projectile
    smex
    undo-tree
    volatile-highlights
    web-mode
    windmove
    yasnippet
    zenburn-theme)
  "Default packages")

(dolist (p etrepat/packages)
  (when (not (package-installed-p p))
    (package-install p)))

(setq magit-last-seen-setup-instructions "1.4.0")

(require 'flyspell)
(setq ispell-program-name "aspell" ; use aspell instead of ispell
      ispell-extra-args '("--sug-mode=ultra"))

(provide 'packages)
;;; packages.el ends here
