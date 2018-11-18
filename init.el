;;; init.el --- Michael Hans "bare bones" configuration
;;; Commentary:
;;; Code:

;;; Save custom-file section outside init
(setq custom-file (concat user-emacs-directory "custom-file.el"))
(if (not (file-exists-p custom-file))
      (with-temp-buffer (write-file custom-file)))
(load custom-file)

;;; Save backups to isolated directory
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))

;;; Set base visual appearance
(setq inhibit-splash-screen t)
(setq line-number-mode t)
(setq column-number-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;;; Configure base packages early
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(defvar package-list '(zenburn-theme
		     yasnippet
		     magit
		     exec-path-from-shell
		     flycheck))

(when (not package-archive-contents)
  (package-refresh-contents))

(dolist (package package-list)
  (when (not (package-installed-p package))
    (package-install package)))

(exec-path-from-shell-initialize)
(load-theme 'zenburn t)

;;; Configure selective packages
(load-file (concat user-emacs-directory "elisp/go.el"))

;;; init.el ends here
