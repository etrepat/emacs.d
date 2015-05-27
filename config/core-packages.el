;;; core-packages.el --- Package repositories and selection.

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
    flx-ido
    flycheck
    flycheck-rust
    gitattributes-mode
    gitconfig-mode
    gitignore-mode
    haskell-mode
    ido-ubiquitous
    inf-ruby
    js2-mode
    json-mode
    magit
    markdown-mode
    multiple-cursors
    php-mode
    popup
    powerline
    projectile
    rainbow-mode
    rainbow-delimiters
    ruby-tools
    rust-mode
    smex
    scss-mode
    undo-tree
    volatile-highlights
    web-mode
    windmove
    yasnippet
    yaml-mode
    yari
    ;; themes
    base16-theme
    zenburn-theme)
  "Default packages")

(dolist (p etrepat/packages)
  (when (not (package-installed-p p))
    (package-install p)))

(setq magit-last-seen-setup-instructions "1.4.0")

;; (require 'flyspell)
;; (setq ispell-program-name "aspell" ; use aspell instead of ispell
;;       ispell-extra-args '("--sug-mode=ultra"))

(provide 'core-packages)
;;; core-packages.el ends here
