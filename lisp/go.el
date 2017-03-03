;;; go.el  --- Golang mode setup and user configurations
;;; Commentary:
;;; Code:

;; Install Golang related melpa packages
(dolist (package '(go-mode go-eldoc go-autocomplete))
  (when (not (package-installed-p package))
    (package-install package)))

(require 'go-autocomplete)

(add-hook 'go-mode-hook 'go-eldoc-setup)

;;; go.el ends here
