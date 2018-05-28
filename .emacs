;;;;; .emacs / RESLOVED ;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;; GENERATED ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(custom-safe-themes
   '("a3333e31cf7bd6787078a58ce855c18e25735284ca46a0daebfcde1388522190" "1655bd4872f5a2ef5e77a653822ea9e4f8cf32d47d3a452e5a77056fb62fa212" "e4c8810d9ab925567a69c11d5c95d198a4e7d05871453b2c92c020712559c4c1" "d92735a3039de9ceebe8326f5299a5272600b2544e34fd6e15c3c95bf99812eb" "1ba61848d0d8c78e037867c26f118875705c20f5ad64949a8cee8c8059e5c50f" "3190b71fa04debee96a8d00b795498a12a6f3002a4e66daaad09f65e48e519db" "c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" "e52718d4b950106873fed00c469941ad8db20f02392d2c7ac184c6defe37ad2c" default))
 '(fringe-mode 0 nil (fringe))
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(multi-term eterm-256color eterm-color web-mode git-gutter-fringe+ diff-hl git-gutter emojify emmet-mode impatient-mode evil-magit magit flycheck evil-surround org-bullets all-the-icons zoom processing-mode processing2-emacs ox-twbs rainbow-delimiters rainbow-mode fiplr evil-collection evil-leader evil use-package helm))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(uniquify-buffer-name-style nil nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hasklug Nerd Font Mono" :height 90 :width normal)))))

;;;;; GENERAL ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; NO SPLASH
(setq inhibit-startup-screen t)
;; TABS AS SPACES
(setq-default indent-tabs-mode nil)

;;;;; VISUAL ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; MOLOKAI
;(load-theme 'molokai t)
(load-theme 'xresloved)

;; VISUAL LINE (Wrapping mode)
(global-visual-line-mode 1)


;;;;; MODE-LINE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; FORMAT
(setq-default mode-line-format
  (list

   '(:eval (propertize "%b" 'face '(:weight bold)))
   '(:eval (if (buffer-modified-p)
               (propertize "  " 'face '(:foreground "#ff0087"))
             (propertize "  " 'face '(:foreground "#87ff00"))))

   '(:eval (propertize "%m" 'face '(:weight bold)))
   '(:eval (propertize "  " 'face '(:foreground "#ff8700")))
   '(:eval (propertize "%l" 'face '(:weight bold)))
   '(:eval (propertize "✖" 'face '(:foreground "#1b1d1e")))

   ))

;;;;; PACKAGES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; PACKAGE MANAGER
(require 'package)
(setq package-enable-at-startup nil)
;; CONNECT TO MELPA
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
;; USE-PACKAGE
(unless (package-installed-p 'use-pacakge)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package)
  (setq use-package-always-ensure t))

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
        '(""))
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; ORG-BABEL
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (python . t)
   (C . t)
   (java . t)
   (js . t)
   (latex . t)))

;; BOLD HEADERS
(set-face-attribute 'org-level-1 nil
                    :weight 'bold)
(set-face-attribute 'org-level-2 nil
                    :weight 'bold)
(set-face-attribute 'org-level-3 nil
                    :weight 'bold)
(set-face-attribute 'org-level-4 nil
                    :weight 'bold)
(set-face-attribute 'org-level-5 nil
                    :weight 'bold)
(set-face-attribute 'org-level-6 nil
                    :weight 'bold)
(set-face-attribute 'org-level-7 nil
                    :weight 'bold)

;;;;; helm ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package helm)

;; HELM M-X BIND
(global-set-key (kbd "M-x") 'helm-M-x)
;; FUZZY
(setq helm-M-x-fuzzy-match t)
;; HIDE HEADER
(setq helm-display-header-line nil)

;; FACES
(set-face-attribute 'helm-selection nil
                    :background "#1b1d1e"
                    :foreground "#f0f0f0")
(set-face-attribute 'helm-candidate-number nil
                    :background "#1b1d1e"
                    :foreground "#f8f8f0")
(set-face-attribute 'helm-source-header nil
                    :background "#1b1d1e"
                    :foreground "#f8f8f0"
                    :family "Hasklug Nerd Font Mono"
                    :height 90)

(defun my/helm-fonts ()
  (face-remap-add-relative 'default
                           :foreground "#465457"))

(add-hook 'helm-major-mode-hook #'my/helm-fonts)

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
    (define-key evil-visual-state-map (kbd "C-c") 'evil-exit-visual-state)
    (define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)
    (evil-define-key 'normal org-mode-map
      (kbd "M-k") 'org-metaup
      (kbd "M-j") 'org-metadown (kbd "M-h") 'org-do-promote (kbd "M-l") 'org-do-demote)))

;; EVIL COLLECTION
(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

;;;;; rainbow-mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package rainbow-mode)

;;;;; processing ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package processing-mode)

(add-to-list 'auto-mode-alist '("\\.pde$" . processing-mode))
(setq processing-location "/usr/bin/processing-java")

;;;;; magit ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package magit)

;; MAGIT EVIL
(use-package evil-magit)
(require 'evil-magit)

;;;;; impatient-mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package impatient-mode)

;;;;; emmet ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package emmet-mode)

;;;;; web-mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package web-mode)

;;;;; haskell-mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package haskell-mode)
