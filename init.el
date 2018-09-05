;; Set up Melpa package manager
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/")
	     '("org" . "https://orgmode.org/elpa/"))

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
 '(blink-cursor-mode nil)
 '(cursor-type (quote bar))
 '(org-babel-load-languages
   (quote
    ((python . t)
     (shell . t)
     (shell . t)
     (ruby . t)
     (awk . t)
     (C . t))))
 '(package-selected-packages
   (quote
    (ox-hugo evil-smartparens smartparens evil flycheck-gometalinter go-add-tags go-complete go-direx go-dlv go-eldoc go-errcheck go-fill-struct go-gen-test go-guru go-imports go-playground go-playground-cli go-scratch go-snippets go-stacktracer godoctor golint govc govet ob-go zenburn-theme zenburn org-ac neotree flymake-go go-autocomplete auto-complete-auctex exec-path-from-shell go go-mode ox-reveal yasnippet elpy jedi flycheck ace-window which-key use-package try tabbar-ruler org-bullets counsel color-theme avy auto-complete atom-one-dark-theme)))
 '(visible-cursor t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
