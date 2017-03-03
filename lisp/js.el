;;; js.el  --- js mode setup and user configurations
;;; Commentary:
;;; Code:

;; Install js related melpa packages
(dolist (package '(js2-mode))
  (when (not (package-installed-p package))
    (package-install package)))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))


;;; js.el ends here
