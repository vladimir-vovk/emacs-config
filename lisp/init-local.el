;;; package -- init-local
;;; Commentary:
;;;   local user configuration

;;; Code:

;;; yasnippet
(require 'init-yasnippet)

;;; web-mode
(require 'init-web-mode)

;; java-script
(require 'init-java-script)

;; hunspell-flyspell
(require 'init-hunspell-flyspell)

;; defaul font
(set-default-font "Monaco 14")

;; this slows opening files
(remove-hook 'find-file-hooks 'vc-find-file-hook)
(remove-hook 'find-file-hooks 'hg-find-file-hook)

;; fix for slow emacs when saving files
(setq vc-handled-backends nil)
(remove-hook 'after-save-hook 'hg-after-save-hook)

;; fix Cyrillic fonts
(require 'unicode-fonts)
(unicode-fonts-setup)

;; Prevent the annoying beep on errors
(setq visible-bell t)

;; Recent files
(require 'recentf)
(recentf-mode 1)
(global-set-key "\C-xf" 'recentf-open-files)
(setq recentf-auto-cleanup 'never)

;; start server
;; (load "server")
;; (server-start)
;; (unless (server-running-p) (server-start))

;; neotree package
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; keys binding
;; set insert debug string for python
(global-set-key (kbd "C-c C-x C-d") "import pdb; pdb.set_trace()")
;; set run rgrep
(global-set-key (kbd "C-c C-x C-r") 'rgrep)
;; open file in browser
(global-set-key (kbd "C-c C-x C-b") 'browse-url-of-file)
;; goto header/source file
(global-set-key (kbd "C-c o") 'ff-find-other-file)

;; fix the PATH variable
;; This makes sure that all of the stuff you have on your PATH actually gets respected in the GUI Emacs,
;; no matter how you start it.
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (shell-command-to-string "TERM=vt100 $SHELL -i -c 'echo $PATH'")))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system (set-exec-path-from-shell-PATH))

;; mercurial ahg
(require 'ahg)

;; fix node path
(setenv "PATH" (concat "/Users/vvovk/.nvm/v0.10.35/bin/:" (getenv "PATH")))

;; mics
(require 'misc)
(global-set-key (kbd "C-c d") 'copy-from-above-command)

;; copy and kill whole current line if no region selected
(defadvice kill-ring-save (before slick-copy activate compile)
  "When called interactively with no active region, copy a single line instead."
  (interactive (if mark-active (list (region-beginning) (region-end)) (message
  "Copied line") (list (line-beginning-position) (line-beginning-position
  2)))))

(defadvice kill-region (before slick-cut activate compile)
  "When called interactively with no active region, kill a single line instead."
  (interactive
    (if mark-active (list (region-beginning) (region-end))
      (list (line-beginning-position)
        (line-beginning-position 2)))))

;; global company-mode
(add-hook 'after-init-hook 'global-company-mode)

;; company-tern
(require 'company-tern)
(eval-after-load 'company
    '(add-to-list 'company-backends 'company-tern))

;; skewer-mode to run js in browser
;; run-skewer -> open js file -> skewer-mode -> C-x C-e for evaluate expression
;; or start skewer-repl

;; nodejs-repl for node.js repl in emacs


(provide 'init-local)
;;; init-local ends here
