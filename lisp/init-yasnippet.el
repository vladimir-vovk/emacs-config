;;; package -- init-yasnippet
;;; Commentary:
;;;   yasnippet configuration

;;; Code:

(require-package 'yasnippet)
(yas-global-mode 1)

; где лежат сниппеты
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets" ))

(provide 'init-yasnippet)
;;; init-yasnippet ends here
