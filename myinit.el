
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "<f5>") 'revert-buffer)

(use-package tabbar
  :ensure t
  :config
  (tabbar-mode 1))

(use-package tabbar-ruler
  :ensure t)
(setq tabbar-ruler-global-tabbar t)
(global-set-key (kbd "C-c t") 'tabbar-ruler-move)
(require 'tabbar-ruler)

(setq ring-bell-function
      (lambda ()
        (let ((orig-fg (face-foreground 'mode-line)))
          (set-face-foreground 'mode-line "#F2804F")
          (run-with-idle-timer 0.1 nil
                               (lambda (fg) (set-face-foreground 'mode-line fg))
                               orig-fg))))

;; (use-package color-theme
;;   :ensure t)

(use-package zenburn-theme
  :ensure t)
(use-package cyberpunk-theme
  :ensure t)
(use-package avk-emacs-themes
  :ensure t)
(use-package challenger-deep-theme
  :ensure t)
(load-theme 'cyberpunk t)

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(setq ido-enable-flex-matching t)
(setq id-everywhere t)
(ido-mode 1)

(defalias 'list-buffers 'ibuffer)
;; (defalias 'list-buffers 'ibuffer-other-window)

(use-package find-file-in-repository
  :ensure t)
(use-package ido
  :ensure t)
(use-package ido-completing-read+
  :ensure t)
(use-package ido-vertical-mode
  :ensure t)
(global-set-key (kbd "C-x f") 'find-file-in-repository)
(ido-ubiquitous-mode 1)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)

(windmove-default-keybindings)

(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0))))) 
    ))

(use-package counsel
  :ensure t
  :bind
  (("M-y" . counsel-yank-pop)
   :map ivy-minibuffer-map
   ("M-y" . ivy-next-line)
   ("C-w" . ivy-yank-word)))

(use-package swiper
  :ensure t
  :init
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ive-display-style 'fancy)
    (global-set-key "\C-s" 'swiper)
    (global-set-key (kbd "C-c C-r") 'ivy-resume)
    (global-set-key (kbd "<f6>") 'ivy-resume)
    (global-set-key (kbd "M-x") 'counsel-M-x)
    (global-set-key (kbd "C-x C-f") 'counsel-find-file)
    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
    (global-set-key (kbd "<f1> l") 'counsel-load-library)
    (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
    (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
    (global-set-key (kbd "C-c g") 'counsel-git)
    (global-set-key (kbd "C-c j") 'counsel-git-grep)
    (global-set-key (kbd "C-c k") 'counsel-ag)
    (global-set-key (kbd "C-x l") 'counsel-locate)
    (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
    ))

;; (use-package avy
 ;; :ensure t
 ;; :bind ("M-s" . avy-goto-char))

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

;; (add-hook 'after-init-hook 'global-company-mode)

;; (setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

(defun my-backup-file-name (fpath)
  "Return a new file path of a given file path.
If the new path's directories does not exist, create them."
  (let* (
         (backupRootDir "~/.emacs.d/emacs-backup/")
         (filePath (replace-regexp-in-string "[A-Za-z]:" "" fpath )) ; remove Windows driver letter in path, for example, “C:”
         (backupFilePath (replace-regexp-in-string "//" "/" (concat backupRootDir filePath "~") ))
         )
    (make-directory (file-name-directory backupFilePath) (file-name-directory backupFilePath))
    backupFilePath
    )
  )

(setq make-backup-file-name-function 'my-backup-file-name)

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))

(use-package jedi
  :ensure t
  :init
  (add-hook 'python-mode-hook 'jedi:setup)
  (add-hook 'python-mode-hook 'jedi:ac-setup))

(use-package elpy
  :ensure t
  :config
  (elpy-enable))
(use-package yasnippet
  :ensure t
  :init
  (yas-global-mode 1))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))

(defun my-go-mode-hook ()
  (add-hook 'before-save-hook 'gofmt-before-save)
  (setq gofmt-command "goimports")
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  ;; guru settings
  (go-guru-hl-identifier-mode)
  ;; Keybindings specific to go mode
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)
  (local-set-key (kbd "M-p") 'compile)
  (local-set-key (kbd "M-P") 'recompile)
  (local-set-key (kbd "M-]") 'next-error)
  (local-set-key (kbd "M-[") 'previous-error)
  ;; turn on autocomplete
  (auto-complete-mode 1))
(add-hook 'go-mode-hook 'my-go-mode-hook)

(use-package go-mode
  :ensure t)
(use-package go-autocomplete
  :ensure t)
(with-eval-after-load 'go-mode
  (require 'go-autocomplete))

(use-package yaml-mode
  :ensure t)

(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

(setq ruby-deep-indent-paren nil)

(global-set-key (kbd "C-c r r") 'inf-ruby)

(use-package chef-mode
  :ensure t)

(use-package markdown-mode
  :ensure t)
(use-package markdown-mode+
  :ensure t)
(use-package markdown-toc
  :ensure t)
(use-package markdownfmt
  :ensure t)
(use-package markdown-preview-eww
  :ensure t)

(use-package smartparens
  :ensure t)
(use-package evil-smartparens
  :ensure t)
(smartparens-global-mode t)

(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)
            (setq-local show-trailing-whitespace nil)
            (auto-complete-mode t)))
(add-hook 'sql-mode-hook
          (lambda ()
            (setq-local ac-ignore-case t)
            (auto-complete-mode)))

(use-package evil
  :ensure t)
(evil-mode t)

(use-package neotree
  :ensure t)

(global-set-key [f8] 'neotree-toggle)

(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "g") 'neotree-refresh)
(evil-define-key 'normal neotree-mode-map (kbd "n") 'neotree-next-line)
(evil-define-key 'normal neotree-mode-map (kbd "p") 'neotree-previous-line)
(evil-define-key 'normal neotree-mode-map (kbd "A") 'neotree-stretch-toggle)
(evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle)

(defface org-block-begin-line
  '((t (:underline "#A7A6AA" :foreground "#b5d2e0" :background "#626268")))
  "Face used for the line delimiting the begin of source blocks.")

(defface org-block-background
  '((t (:background "#FFFFEA")))
  "Face used for the source block background.")

(defface org-block-end-line
  '((t (:overline "#A7A6AA" :foreground "#b5d2e0" :background "#626268")))
  "Face used for the line delimiting the end of source blocks.")

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (sql . t)
   (ruby . t)
   (sh . t)))

(setq org-src-fontify-natively t)

(use-package auto-org-md
  :ensure t)
(require 'auto-org-md)

(define-skeleton org-header-skeleton
  "Header info for a emacs-org file."
  "Title: "
  "#+TITLE: " (read-string "What is the title? ") " \n"
  "#+AUTHOR: Jordan Garrison\n"
  "#+email: jordan.garrison@gm.com\n"
  "#+OPTIONS: ^:nil num:nil\n"
  "#+INFOJS_OPT: view:" (read-string "View (options are info,overview,conent,showall): ") " sdepth:1 toc:i mouse:\n"
  "#+PROPERTY: header-args :exports both :eval never-export\n"
  "\n"
  )
(global-set-key [C-S-f4] 'org-header-skeleton)

(setq org-confirm-babel-evaluate nil)
