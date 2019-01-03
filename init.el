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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (deeper-blue)))
 '(custom-safe-themes
   (quote
    ("d1cc05d755d5a21a31bced25bed40f85d8677e69c73ca365628ce8024827c9e3" "bd82c92996136fdacbb4ae672785506b8d1d1d511df90a502674a51808ecc89f" "08f5da7e1f5064a2917af94f0dab946adfb25665b25450168ded749ec78a1145" "f71859eae71f7f795e734e6e7d178728525008a28c325913f564a42f74042c31" "3f44e2d33b9deb2da947523e2169031d3707eec0426e78c7b8a646ef773a2077" default)))
 '(fci-rule-color "#3E4451")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-export-backends (quote (ascii html icalendar latex md)))
 '(package-selected-packages
   (quote
    (go-gen-test gotest go-guru scala-mode fzf find-file-in-repository challenger-deep-theme avk-emacs-themes cyberpunk-theme evil-smartparens smartparens go-autocomplete cssh markdownfmt markdown-toc evil flymake-json json-mode magit treemacs rubocop ssh auto-org-md edit-indirect markdown-preview-eww ob-sql-mode howdoi hive ac-html bash-completion neotree markdown-mode markdown-mode+ ruby-tools chef-mode flymake-python-pyflakes flymake-ruby org-chef ruby-additional flycheck-yamllint flymake-yaml yaml-mode flyspell-correct-ivy zenburn-theme leuven-theme htmlize org-babel-eval-in-repl go go-mode ox-reveal yasnippet elpy jedi flycheck ace-window which-key use-package try tabbar-ruler org-bullets counsel color-theme avy auto-complete atom-one-dark-theme)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(safe-local-variable-values (quote ((org-confirm-babel-evaluate))))
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBE" :slant normal :weight semi-bold :height 98 :width normal))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
