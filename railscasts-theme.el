;;; railscasts-theme.el --- Railscasts color theme for GNU Emacs.

;; Inspired by the brilliant Railscasts theme for TextMate

;; Copyright (C) 2009 Oleg Shaldybin <oleg.shaldybin@gmail.com>

;; Author: Oleg Shaldybin
;; Adapted-By: Yesudeep Mangalapilly, Yuichi TANIKAWA
;; Keywords: railscasts color theme
;; URL: https://github.com/itiut/railscasts-theme
;; Requires: GNU Emacs 24

;; This file is NOT a part of GNU Emacs.

;;; License:

;; MIT License
;; -----------
;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use,
;; copy, modify, merge, publish, distribute, sublicense, and/or
;; sell copies of the Software, and to permit persons to whom the
;; Software is furnished to do so, subject to the following
;; conditions:
;;
;; The above copyright notice and this permission notice shall
;; be included in all copies or substantial portions of the
;; Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
;; OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
;; HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
;; WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;; FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
;; OTHER DEALINGS IN THE SOFTWARE.

;;; Usage:
;;
;; (load-theme 'railscasts t nil)

;;; Code:

(deftheme railscasts
  "Railscasts color theme for GNU Emacs")

(custom-theme-set-faces
 'railscasts
 '(default ((t (:background "#323232" :foreground "#E6E1DC"))))
 '(cursor ((t (:foreground "#5A647E"))))
 '(blue ((t (:foreground "blue"))))
 '(bold ((t (:bold t))))
 '(bold-italic ((t (:italic t :bold t))))
 '(fringe ((t (:background "#323232"))))
 '(font-lock-builtin-face ((t (:foreground "#D0D0FF"))))
 '(font-lock-comment-face ((t (:foreground "#BC9458"))))
 '(font-lock-constant-face ((t (:foreground "#71B1DF"))))
 '(font-lock-doc-string-face ((t (:foreground "#A5C261"))))
 '(font-lock-function-name-face ((t (:foreground "#FFC66D"))))
 '(font-lock-keyword-face ((t (:foreground "#C46324"))))
 '(font-lock-preprocessor-face ((t (:foreground "#CC7833"))))
 '(font-lock-reference-face ((t (:foreground "LightSteelBlue"))))
 '(font-lock-string-face ((t (:foreground "#A5C261"))))
 '(font-lock-type-face ((t (:foreground "#F2777A"))))
 '(font-lock-variable-name-face ((t (:foreground "LightSteelBlue"))))
 '(font-lock-warning-face ((t (:foreground "Pink"))))
 '(paren-face-match-light ((t (:foreground "#FFC66D" :background "#555577"))))
 '(highlight ((t (:background "#323232"))))
 '(hl-line ((t (:background "#424242"))))
 '(link ((t (:foreground "#FFC66D"))))
 '(show-paren-match ((t (:background "#F2777A"))))
 '(italic ((t (:italic t))))
 '(mode-line ((t (:background "#A5BAF1" :foreground "black" :box nil))))
 '(modeline-buffer-id ((t (:background "#A5BAF1" :foreground "black"))))
 '(modeline-mousable ((t (:background "#A5BAF1" :foreground "black"))))
 '(modeline-mousable-minor-mode ((t (:background "#A5BAF1" :foreground "black"))))
 '(region ((t (:background "#555555"))))
 '(primary-selection ((t (:background "#5F5F5F"))))
 '(isearch ((t (:background "#FFC66D" :foreground "black"))))
 '(lazy-highlight ((t :background "#847523")))
 '(zmacs-region ((t (:background "#555577"))))
 '(secondary-selection ((t (:background "#5F5F5F" :foreground "LightSalmon"))))
 '(flymake-errline ((t (:background "LightSalmon" :foreground "black"))))
 '(flymake-warnline ((t (:background "LightSteelBlue" :foreground "black"))))
 '(underline ((t (:underline t))))
 '(minibuffer-prompt ((t (:bold t :foreground "#FF6600")))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'railscasts)

;;; railscasts-theme.el ends here
