;; ========================================================================
;; emacs config file
;;
;; AUTHOR:  Benjamin Friesen
;; REPO:    https://github.com/resloved/dotfiles-yadm
;; CONTACT: bfriesenwork@gmail.com
;;
;; ========================================================================

;; ============= GENERATED ============

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(custom-safe-themes
   (quote
    ("1ba61848d0d8c78e037867c26f118875705c20f5ad64949a8cee8c8059e5c50f" "3190b71fa04debee96a8d00b795498a12a6f3002a4e66daaad09f65e48e519db" "c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" "e52718d4b950106873fed00c469941ad8db20f02392d2c7ac184c6defe37ad2c" default)))
 '(fringe-mode 0 nil (fringe))
 '(menu-bar-mode nil)
 '(org-agenda-files (quote ("~/1.org" "~/test.org")))
 '(package-selected-packages
   (quote
    (emmet-mode impatient-mode evil-magit magit flycheck evil-surround org-bullets all-the-icons zoom processing-mode processing2-emacs ox-twbs rainbow-delimiters rainbow-mode fiplr evil-collection evil-leader evil use-package helm)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(uniquify-buffer-name-style nil nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Office Code Pro" :foundry "NATH" :slant normal :weight light :height 83 :width normal)))))

;; ============= GENERAL ============

;; line numbers
(global-linum-mode t)
(setq linum-format "    %d  ")

;; no splash
(setq inhibit-startup-screen t)

;; tab as spaces
(setq-default indent-tabs-mode nil)

;; ============= VISUAL ============

;; theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'molokai t)

;; visual line
(global-visual-line-mode 1)

;;col
(column-number-mode 1)

;;git
(defadvice vc-mode-line (after strip-backend () activate)
  (when (stringp vc-mode)
    (let ((gitlogo (replace-regexp-in-string "^ Git." " " vc-mode)))
          (setq vc-mode gitlogo))))


;; ============= PACKAGES ============

(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)

;; package manager
(unless (package-installed-p 'use-pacakge)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package)
  (setq use-package-always-ensure t))

;; org
(use-package org
  :init
  (progn
    (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
    (global-set-key "\C-cl" 'org-store-link)
    (global-set-key "\C-ca" 'org-agenda)))
    (setq org-startup-indented t)

(setq org-src-tab-acts-nativley t)

(use-package org-bullets)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (python . t)
   (C . t)
   (java . t)
   (js . t)
   (latex . t)))

(use-package ox-twbs
  :config
  (setq org-publish-project-alist
        '(("org-notes"
           :base-directory "~/org/"
           :publishing-directory "~/public_html"
           :publishing-function org-twbs-publish-to-html
           :with-sub-superscript nil))))

;; helm
(use-package helm)

(setq helm-M-x-fuzzy-match t)
(global-set-key (kbd "M-x") 'helm-M-x)

(set-face-attribute 'helm-selection nil
                    :background "#4c4745"
                    :foreground "#F8F8F0")

(set-face-attribute 'helm-source-header nil
                    :background "#403d3d"
                    :foreground "#F8F8F0"
                    :height 90)

(set-face-attribute 'helm-candidate-number nil
                    :background "#4c4745"
                    :foreground "#F8F8F0")

;; projectile
(use-package projectile)

(use-package helm-projectile)
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(setq projectile-enable-caching t)
(helm-projectile-on)

;; evil
(use-package evil
  :init
  (setq evil-want-integration nil)
  (progn
    (use-package evil-leader
      :init (global-evil-leader-mode)
      :config
      (progn
        (evil-leader/set-leader ",")
        (setq evil-leader/in-all-states t)
        (evil-leader/set-key
          "e" 'helm-projectile
          "b" 'helm-mini
          "z" 'previous-buffer "x" 'next-buffer
          "c" 'kill-buffer
          "v" 'split-window-below
          "h" 'split-window-right
          "w" 'other-window
          "g" 'magit-status)))
    (evil-mode t)
    (use-package evil-surround
      :config
      (global-evil-surround-mode 1))
    ;;(use-package evil-escape
    ;;  :init (evil-escape-mode)
    ;;  :config
    ;;  (setq-default evil-escape-key-sequence "C-c"))
    (define-key evil-visual-state-map (kbd "C-c") 'evil-exit-visual-state)
    (define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)
    (evil-define-key 'normal org-mode-map
      (kbd "M-k") 'org-metaup
      (kbd "M-j") 'org-metadown
      (kbd "M-h") 'org-do-promote
      (kbd "M-l") 'org-do-demote)))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

;; rainbow-mode

(use-package rainbow-mode)
(rainbow-mode)

;; processing

(use-package processing-mode)
(add-to-list 'auto-mode-alist '("\\.pde$" . processing-mode))
(setq processing-location "/usr/bin/processing-java")

;; magit
(use-package magit)

;;evil
(use-package evil-magit)
(require 'evil-magit)

;; impatient-mode
(use-package impatient-mode)

;; emmet
(use-package emmet-mode)

;; diminish

;;hide minor modes
(use-package diminish)
(require 'diminish)
(diminish 'projectile-global-mode)
(diminish 'projectile-mode)
(diminish 'rainbow-mode)
(diminish 'visual-line-mode)
(diminish 'undo-tree-mode)
(diminish 'abbrev-mode)
(diminish 'impatient-mode)
(diminish 'emmet-mode)
