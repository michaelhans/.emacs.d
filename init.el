;;Adios Splash Screen
(setq inhibit-splash-screen t)

;;Show Column and Line Numbers
(setq line-number-mode t)
(setq column-number-mode t)

;;Remove Menu and Tool Bar's
(menu-bar-mode 0)
(tool-bar-mode 0)

;;Tabs to Spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;;Set Load Path
(add-to-list 'load-path "~/.emacs.d/site-lisp/")

;;Configure Markdown Mode
(autoload 'markdown-mode "markdown-mode.el" 
  "Major mode for editing Markdown files" t) 
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))
(put 'upcase-region 'disabled nil)
