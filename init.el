;; Remove Splash Screen
(setq inhibit-splash-screen t)

;;Show Column and Line Numbers
(setq line-number-mode t)
(setq column-number-mode t)

;;Remove Menu and Tool Bar's
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode  ) (tool-bar-mode   -1))
(if (fboundp 'menu-bar-mode  ) (menu-bar-mode   -1))

;; IDO Mode                                                                                                                                                                                                      
(require 'ido)   

;; Make Commands easier on laptop keyboard
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Tabs to Spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Solarized Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/site-lisp/emacs-color-theme-solarized/")
(load-theme 'solarized-dark t)

;;Set Load Path
(add-to-list 'load-path "~/.emacs.d/site-lisp/")

;;Configure Markdown Mode
(autoload 'markdown-mode "markdown-mode.el" 
  "Major mode for editing Markdown files" t) 
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

(custom-set-variables
 ;; Enable IDO Mode
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 ;; Unique Buffers with Same Names
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify)))
(custom-set-faces)                                                                                                                                                                                                                           

;; AOL Specific Perl stuff
(defun orb-perl-mode-hook ()                                                                                                                                                                                                                 
  (setq perl-indent-level 2
        perl-close-paren-offset -2                                                                                                                                                                                                           
        perl-continued-statement-offset 2                                                                                                                                                                                                    
        perl-indent-parens-as-block t                                                                                                                                                                                                        
        perl-tab-always-indent t))                                                                                                                                                                                                           
(add-hook 'perl-mode-hook 'orb-perl-mode-hook)

;; Open a shell
(shell)
