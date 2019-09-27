(setq debug-on-error t)


;; Adjust garbage collection thresholds during startup, and thereafter
(setq package-check-signature nil)
(setq gc-cons-threshold 400000000)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(package-initialize)

;;; Begin initialization
;; Turn off mouse interface early in startup to avoid momentary display
(when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1))

;; Skip the splash screen
(setq inhibit-startup-message t)

;;; Set up package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(package-initialize)
 (unless package-archive-contents (package-refresh-contents))
;(package-refresh-contents)

(package-install 'paradox)

(paradox-require 'use-package)

(require 'use-package)

(setq use-package-always-ensure t)

;;; Load the config
(org-babel-load-file (concat user-emacs-directory "config.org"))

(use-package f)
(f-mkdir "org")

(setq gc-cons-threshold 800000)
