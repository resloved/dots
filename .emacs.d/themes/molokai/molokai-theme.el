;;; molokai-theme.el --- molokai theme with Emacs theme engine

;; Copyright (C) 2013 by Adam Lloyd
;; Copyright (C) 2013 by Syohei YOSHIDA

;; Author: Syohei YOSHIDA <syohex@gmail.com>
;; URL: https://github.com/alloy-d/color-theme-molokai
;; Version: 0.01

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(deftheme molokai
  "molokai theme")

(custom-theme-set-faces
 'molokai

 '(default ((t (:background "#1B1D1E" :foreground "#F8F8F2"))))
 '(cursor ((t (:background "#F8F8F0"))))

 '(bold ((t (:weight bold))))
 '(bold-italic ((t (:weight bold :slant italic))))
 '(custom-face-tag ((t (:foreground "#66D9EF" :weight bold))))
 '(custom-state ((t (:foreground "#A6E22E"))))
 '(elfeed-search-date-face ((t (:foreground "#465457"))))
 '(elfeed-search-feed-face ((t (:foreground "#66D9EF"))))
 '(elfeed-search-tag-face ((t (:foreground "#A6E22E" :weight bold))))
 '(elfeed-search-title-face ((t (:foreground "#F8F8F2"))))
 '(italic ((t (:slant italic))))
 '(region ((t (:background "#403D3D"))))
 '(underline ((t (:underline t))))
 '(css-selector ((t (:foreground "#F92672"))))
 '(css-property ((t (:foreground "#66D9EF"))))
 '(diff-added ((t (:foreground "#A6E22E" :weight bold))))
 '(diff-context ((t (:foreground "#F8F8F2"))))
 '(diff-file-header ((t (:foreground "#66D9EF" :background nil))))
 '(diff-indicator-added ((t (:foreground "#A6E22E"))))
 '(diff-indicator-removed ((t (:foreground "#F92672"))))
 '(diff-header ((t (:foreground "#F8F8F2" :background "#232526"))))
 '(diff-hunk-header ((t (:foreground "#AE81FF" :background "#232526"))))
 '(diff-removed ((t (:foreground "#F92672" :weight bold))))
 '(escape-glyph ((t (:foreground "#E6DB74"))))
 '(minibuffer-prompt ((t (:foreground "#66D9EF"))))
 '(mode-line ((t (:foreground "#F8F8F2" :background "#000000"
                  :box (:line-width 1 :color "#000000" :style released-button)))))
 '(mode-line-buffer-id ((t (:foreground nil :background "#000000" :weight semi-bold))))
 '(mode-line-inactive ((t (:foreground "#BCBCBC" :background "#000000"
                           ':box (:line-width 1 :color "#232526")))))
 '(mode-line-mousable ((t (:foreground "#BCBCBC" :background "#000000"))))
 '(mode-line-mousable-minor-mode ((t (:foreground "#BCBCBC" :background "#000000"))))
 '(font-lock-builtin-face ((t (:foreground "#A6E22E"))))
 '(font-lock-comment-face ((t (:foreground "#465457" :slant italic))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#465457" :slant italic))))
 '(font-lock-constant-face ((t (:foreground "#AE81FF"))))
 '(font-lock-doc-face ((t (:foreground "#E6DB74" :slant italic))))
 '(font-lock-function-name-face ((t (:foreground "#F92672" :slant italic))))
 '(font-lock-keyword-face ((t (:foreground "#66D9EF"))))
 '(font-lock-negation-char-face ((t (:weight bold))))
 '(font-lock-preprocessor-face ((t (:foreground "#A6E22E"))))
 '(font-lock-regexp-grouping-backslash ((t (:weight bold))))
 '(font-lock-regexp-grouping-construct ((t (:weight bold))))
 '(font-lock-string-face ((t (:foreground "#E6DB74"))))
 '(font-lock-type-face ((t (:foreground "#66D9EF"))))
 '(font-lock-variable-name-face ((t (:foreground "#F92672"))))
 '(font-lock-warning-face ((t (:foreground "#FFFFFF" ':background "#333333"))))
 '(fringe ((t (:background "#232526"))))
 '(highlight ((t (:foreground "#000000" :background "#C4BE89"))))
 '(hl-line ((t (:background "#293739"))))
 '(icompletep-choices ((t (:foreground "#F92672"))))
 '(icompletep-determined ((t (:foreground "#A6E22E"))))
 '(icompletep-keys ((t (:foreground "#F92672"))))
 '(icompletep-nb-candidates ((t (:foreground "#AE81FF"))))
 '(ido-first-match ((t (:foreground "#A6E22E" :weight bold))))
 '(ido-only-match ((t (:foreground "#A6E22E"))))
 '(ido-subdir ((t (:foreground "#FD971F"))))
 '(isearch ((t (:foreground "#C4BE89" :background "#000000"))))
 '(isearch-fail ((t (:foreground "#FFFFFF" :background "#333333"))))
 '(lazy-highlight ((t (:foreground "#465457" :background "#000000"))))
 '(markdown-italic-face ((t (:slant italic))))
 '(markdown-bold-face ((t (:weight bold))))
 '(markdown-header-face ((t (:weight normal))))
 '(markdown-header-face-1 ((t (:foreground "#66D9EF"))))
 '(markdown-header-face-2 ((t (:foreground "#F92672"))))
 '(markdown-header-face-3 ((t (:foreground "#A6E22E"))))
 '(markdown-header-face-4 ((t (:foreground "#AE81FF"))))
 '(markdown-header-face-5 ((t (:foreground "#E6DB74"))))
 '(markdown-header-face-6 ((t (:foreground "#66D9EF"))))
 '(markdown-inline-code-face ((t (:foreground "#66D9EF"))))
 '(markdown-list-face ((t (:foreground "#A6E22E"))))
 '(markdown-blockquote-face ((t (:slant italic))))
 '(markdown-pre-face ((t (:foreground "#AE81FF"))))
 '(markdown-link-face ((t (:foreground "#66D9EF"))))
 '(markdown-reference-face ((t (:foreground "#66D9EF"))))
 '(markdown-url-face ((t (:foreground "#E6DB74"))))
 '(markdown-link-title-face ((t (:foreground "#F92672"))))
 '(markdown-comment-face ((t (:foreground "#465457"))))
 '(markdown-math-face ((t (:foreground "#AE81FF" :slant italic))))
 '(mumamo-background-chunk-major ((t (:background "#272822"))))
 '(mumamo-background-chunk-submode ((t (:background "#1B1D1E"))))
 '(outline-1 ((t (:foreground "#C4BE89"))))
 '(outline-2 ((t (:foreground "#FD971F"))))
 '(outline-3 ((t (:foreground "#EF5939"))))
 '(outline-4 ((t (:foreground "#F92672"))))
 '(outline-5 ((t (:foreground "#960050"))))
 '(outline-6 ((t (:foreground "#AE81FF"))))
 '(outline-7 ((t (:foreground "#66D9EF"))))
 '(outline-8 ((t (:foreground "#A6E22E"))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit outline-1))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit outline-2))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit outline-3))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit outline-4))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit outline-5))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit outline-6))))
 '(rainbow-delimiters-depth-7-face ((t (:inherit outline-7))))
 '(rainbow-delimiters-depth-8-face ((t (:inherit outline-8))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#BCA3A3"))))
 '(secondary-selection ((t (:background "#272822"))))
 '(shadow ((t (:foreground "#465457"))))
 '(show-paren-match-face ((t (:foreground "#000000" :background "#FD971F"))))
 '(show-paren-mismatch-face ((t (:foreground "#960050" :background "#1E0010"))))
 '(undo-tree-visualizer-active-branch-face ((t (:inherit default))))
 '(undo-tree-visualizer-current-face ((t (:foreground "#EF5939"))))
 '(undo-tree-visualizer-default-face ((t (:inherit shadow))))
 '(undo-tree-visualizer-register-face ((t (:foreground "E6DB74"))))
 '(undo-tree-visualizer-unmodified-face ((t (:foreground "#66D9EF"))))
 '(widget-inactive-face ((t (:background "#ff0000"))))
 '(woman-addition ((t (:foreground "#AE81FF"))))
 '(woman-bold ((t (:foreground "#F92672"))))
 '(woman-italic ((t (:foreground "#A6E22E"))))
 '(woman-unknown ((t (:foreground "#66D9EF")))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'molokai)

;;; molokai-theme.el ends here
