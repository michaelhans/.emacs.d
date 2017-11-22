;;; init.el --- Michael Hans "Dumpster Fire" configuration
;;; Commentary:
;;; Code:

;; Visual Appearance
(setq inhibit-splash-screen t)
(setq line-number-mode t)
(setq column-number-mode t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; IDO Mode
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Tabs to Spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Make Commands easier on laptop keyboard
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Allow easy frame switching without loosing layout
(windmove-default-keybindings)

;; Some Package Stuff to refactor
(require 'package)
(add-to-list   'package-archives
               '("melpa" . "http://melpa.org/packages/")
               t)
(package-initialize)

;; Some list of packages to refactor later
(defvar package-list '(zenburn-theme
                     yasnippet
                     whitespace-cleanup-mode
                     restclient
                     magit
                     exec-path-from-shell
                     jinja2-mode
                     flycheck
                     yaml-mode
                     markdown-mode
                     ))

;; Check if package meta stuff has content, otherwise refresh
(when (not package-archive-contents)
  (package-refresh-contents))

;; install packages (if they don't exist)
(dolist (package package-list)
  (when (not (package-installed-p package))
    (package-install package)))

;; Push $PATH from shell when in GUI mode
(exec-path-from-shell-initialize)
(exec-path-from-shell-copy-env "GOPATH")

;; Load theme (moved away from solarized, crazy world)
(load-theme 'zenburn t)

;; Enable yasnippet
(yas-global-mode 1)


(load-file ".emacs.d/lisp/go.el")
(load-file ".emacs.d/lisp/js.el")

(add-hook 'after-init-hook #'global-flycheck-mode)

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (zenburn-theme yasnippet yaml-mode whitespace-cleanup-mode restclient magit jinja2-mode exec-path-from-shell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
