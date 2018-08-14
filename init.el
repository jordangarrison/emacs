;; Set up Melpa package manager
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/")
	     '("org" . "http://orgmode.org/elpa/"))

;; Initialize package manager
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))


;; Orb babel
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

;; --------------------------------------------------------------------------
;; Automatically generated variables placed below this line, put your configs
;; above here
;; --------------------------------------------------------------------------
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-faces-vector
;;    [default default default italic underline success warning error])
;;  '(ansi-color-names-vector
;;    ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
;;  '(custom-enabled-themes (quote (atom-one-dark)))
;;  '(custom-safe-themes
;;    (quote
;;     ("57f95012730e3a03ebddb7f2925861ade87f53d5bbb255398357731a7b1ac0e0" default)))
;;  '(package-selected-packages
;;    (quote
;;     (color-theme auto-complete avy counsel org-bullets atom-one-dark-theme which-key try use-package))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("3f44e2d33b9deb2da947523e2169031d3707eec0426e78c7b8a646ef773a2077" default)))
 '(fci-rule-color "#3E4451")
 '(org-export-backends (quote (ascii html icalendar latex md odt confluence)))
 '(package-selected-packages
   (quote
    (markdown-mode markdown-mode+ ruby-tools chef-mode flymake-python-pyflakes flymake-ruby org-chef ruby-additional flycheck-yamllint flymake-yaml yaml-mode flyspell-correct-ivy zenburn-theme leuven-theme htmlize org-babel-eval-in-repl go go-mode ox-reveal yasnippet elpy jedi flycheck ace-window which-key use-package try tabbar-ruler org-bullets counsel color-theme avy auto-complete atom-one-dark-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBE" :slant normal :weight normal :height 98 :width normal))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
