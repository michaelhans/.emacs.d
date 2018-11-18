;;; go.el --- Goland mode setup and config
;;; Commentary:
;;; Code:

(dolist (package '(go-mode go-autocomplete))
  (when (not (package-installed-p package))
    (package-install package)))

(require 'go-autocomplete)

(add-hook 'before-save-hook 'gofmt-before-save)
(global-flycheck-mode)

;;; go.el ends here
