(setq debug-on-error t)


;; Adjust garbage collection thresholds during startup, and thereafter
(setq gc-cons-threshold 400000000)

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
;; (package-refresh-contents)

(package-install 'paradox)

(paradox-require 'use-package)

(require 'use-package)

(setq use-package-always-ensure t)

;;; Load the config
(org-babel-load-file (concat user-emacs-directory "config.org"))

(setq gc-cons-threshold 800000)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yaml-tomato forge magit-popup magit-gh-pulls flycheck go-complete go-eldoc go-mode auto-complete ensime nord-theme kosmos-theme madhat2r-theme sublime-themes subatomic-theme soothe-theme plan9-theme heroku-theme github-theme espresso-theme cyberpunk-theme bliss-theme birds-of-paradise-plus-theme atom-one-dark-theme arjen-grey-theme white-theme punpun-theme idea-darkula-theme doom-themes neotree counsel-projectile counsel flx ivy yaml-mode terraform-mode exec-path-from-shell golden-ratio expand-region org-bullets restclient autopair projectile magit use-package paradox))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
