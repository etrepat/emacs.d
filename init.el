;;; init.el --- emacs initialization file

;;; Commentary:
;;

;;; Code:
;;

;; Username & email
(setq user-full-name "Estanislau Trepat")
(setq user-mail-address "estanis@etrepat.com")

;; Always load newest byte code
(setq load-prefer-newer t)

;; reduce the frequency of garbage collection by making it happen on
;; each 50MB of allocated data (the default is on every 0.76MB)
(setq gc-cons-threshold 50000000)

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

;; add ~/.emacs.d/config to the load path
(defvar etrepat/config-dir (expand-file-name "config" user-emacs-directory))
(add-to-list 'load-path etrepat/config-dir)

;; add ~/.emacs.d/vendor to the load path
(defvar etrepat/vendor-dir (expand-file-name "vendor" user-emacs-directory))
(add-to-list 'load-path etrepat/vendor-dir)

;; set ~/.emacs.d/save to hold all save files and/or history files.
(defvar etrepat/save-dir (expand-file-name "save" user-emacs-directory))

;; add ~./.emacs.d/themes to the theme load path
(defvar etrepat/themes-dir (expand-file-name "themes" user-emacs-directory))
(add-to-list 'custom-theme-load-path etrepat/themes-dir)
(add-to-list 'load-path etrepat/themes-dir)

;; Load global config & keybindings
(require 'core-packages)
(require 'core-functions)
(require 'core-ui)
(require 'core-editing)
(require 'core-keybindings)
(require 'mode-programming)

;; init.el ends here
