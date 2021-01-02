;;;;; .emacs / RESLOVED ;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;; generated ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode nil nil (cua-base))
 '(fringe-mode 0 nil (fringe))
 '(menu-bar-mode nil)
 '(org-modules
   '(org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-rmail org-w3m org-drill))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(uniquify-buffer-name-style nil nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 80 :width normal :family "CozetteVector"))))
 '(org-habit-alert-face ((t (:background "#867153"))))
 '(org-habit-alert-future-face ((t (:background "#5d5243"))))
 '(org-habit-clear-face ((t (:background "#3f444a"))))
 '(org-habit-clear-future-face ((t (:background "#23272e"))))
 '(org-habit-overdue-face ((t (:background "#90484b"))))
 '(org-habit-overdue-future-face ((t (:background "#63393e"))))
 '(org-habit-ready-face ((t (:background "#38698d"))))
 '(org-habit-ready-future-face ((t (:background "#2f4d65")))))

;;;;; packages ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; STRAIGHT
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(setq straight-use-package-by-default t)

;;;;; exwm ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(use-package exwm)
;;(require 'exwm)
;;(require 'exwm-config)

;;;;; general ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; NO SPLASH
(setq inhibit-startup-screen t)
;; TABS AS SPACES
(setq-default indent-tabs-mode nil)
;; AUTO RELOAD
(global-auto-revert-mode t)

;;;;; visual ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(global-font-lock-mode 1)

;; DRACULA
;;(load-theme 'dracula t)

;; MOLOKAI
;;(load-theme 'molokai t)

;; VISUAL LINE (Wrapping mode)
(global-visual-line-mode 1)

;; DOOM
(use-package doom-themes)
(load-theme 'doom-one t)

;; INTERNAL BORDER
(add-to-list 'default-frame-alist '(internal-border-width . 16))

;; REMOVE VERTICAL BORDER
(set-face-background 'vertical-border (face-background 'default))
(set-face-foreground 'vertical-border (face-background 'vertical-border))

;;;;; mode-line ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq-default mode-line-format
  (list
   '(:eval (propertize "%b"))
   '(:eval (if (buffer-modified-p)
               (propertize " ● " 'face '(:foreground "#ff6c6b"))
             (propertize " ● " 'face '(:foreground "#98be65"))))
   '(:eval (propertize "%l"))
   '(:eval (propertize " ● " 'face '(:foreground "#5B6268")))
   '(:eval (propertize "%m"))))

(set-face-attribute 'mode-line nil
                    :background "#282c34")
(set-face-attribute 'mode-line-inactive nil
                    :background "#282c34")

;;;;; org ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; INIT
(use-package org
  :init
  (progn (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
    (global-set-key "\C-cl" 'org-store-link)
    (global-set-key "\C-ca" 'org-agenda)
    (setq org-startup-indented t)))

;; ORG-BULLETS
(use-package org-bullets
  :init
  (setq org-bullets-bullet-list
        '("●"))
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; ORG FACES
(set-face-attribute 'org-document-title nil
                    :height 1.0
                    :weight 'normal)

;; ORG-DOWNLOAD
(use-package org-download)

;; NO BOLD
(defun my/org-mode-hook ()
  "Stop the org-level headers from increasing in height relative to the other text."
  (dolist (face '(org-level-1
                  org-level-2
                  org-level-3
                  org-level-4
                  org-level-5))
  (set-face-attribute face nil :weight 'semi-bold :height 1.0)))

(add-hook 'org-mode-hook #'my/org-mode-hook)

;; SR
;;(load "~/.emacs.d/mine/sr.el")

;;;;; helm ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package helm)

;; HELM M-X BIND
(global-set-key (kbd "M-x") 'helm-M-x)
;; FUZZY
(setq helm-M-x-fuzzy-match t)
;; HIDE HEADER
(setq helm-display-header-line nil)

;;;;; projectile ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package projectile)

;; HELM PROJECTILE
(use-package helm-projectile)
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(setq projectile-enable-caching t)
(helm-projectile-on)

;;;;; evil ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package evil
  :init
  (setq evil-want-integration nil)
  (progn
    ;; EVIL LEADER
    (use-package evil-leader
      :init (global-evil-leader-mode)
      :config
      (progn
        (evil-leader/set-leader ",")
        (setq evil-leader/in-all-states t)
        ;; LEADER BINDS
        (evil-leader/set-key
          "e" 'helm-projectile
          "b" 'helm-mini
          "s" 'helm-projectile-grep
          "z" 'previous-buffer
          "x" 'next-buffer
          "c" 'kill-buffer
          "v" 'split-window-below
          "h" 'split-window-right
          "w" 'other-window
          "t" 'term
          "r" 'term-char-mode
          "g" 'magit-status
          "a" 'org-agenda)))
    (evil-mode t)
    ;; EVIL SURROUND
    (use-package evil-surround
      :config
      (global-evil-surround-mode 1))
    (evil-define-key 'normal org-mode-map
      (kbd "t")   'org-todo
      (kbd "M-k") 'org-prev-superior
      (kbd "M-j") 'org-next-superior
      (kbd "M-K") 'org-sr-fail
      (kbd "M-J") 'org-sr-pass
      (kbd "M-h") 'org-promote-subtree
      (kbd "M-l") 'org-demote-subtree)))

;;;;; magit ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package magit)

;; MAGIT EVIL
(use-package evil-magit)
(require 'evil-magit)

;;;;; pdf-tools ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(use-package pdf-tools)
;(pdf-tools-install)

;;;;; hide-mode-line ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(use-package hide-mode-line)
;;(require 'hide-mode-line)

;; MODE HOOKS
;;(add-hook 'pdf-view-mode-hook #'hide-mode-line-mode)
;;(add-hook 'magit-status-hook #'hide-mode-line-mode)
;;(add-hook 'helm-projectile-hook #'hide-mode-line-mode)
;;(add-hook 'helm-mini-hook #'hide-mode-line-mode)
;;(add-hook 'term-hook #'hide-mode-line-mode)
;;(add-hook 'org-agenda-hook #'hide-mode-line-mode)

;;;;; tramp   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq tramp-default-method "ssh")
(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))

;;;;; rust ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package rust-mode)
(use-package cargo)
(add-hook 'rust-mode-hook 'cargo-minor-mode)

;;;;; singles ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package impatient-mode)
(use-package emmet-mode)
(use-package web-mode)
(use-package haskell-mode)
(use-package writeroom-mode)
(use-package rainbow-mode)
(use-package processing-mode)
(use-package ein)
(use-package yaml-mode)
(use-package emojify)

;;;;; exit ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
