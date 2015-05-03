;;; package -- init-java-script
;;; Commentary:
;;;   java-script configuration

;;; Code:

(require-package 'json-mode)
(require-package 'js2-mode)
(require-package 'ac-js2)
(require-package 'coffee-mode)

(require-package 'tern)
(require-package 'tern-auto-complete)

(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

;; js-comint node.js repl and code execution -> M-x run-js
(require 'js-comint)
    (setq inferior-js-program-command "node") ;; not "node-repl"
    ;; Use your favorited js mode here:
    (add-hook 'js2-mode-hook '(lambda ()
                (local-set-key "\C-x\C-e"
                                'js-send-last-sexp)
                (local-set-key "\C-\M-x"
                                'js-send-last-sexp-and-go)
                (local-set-key "\C-cb"
                                'js-send-buffer)
                (local-set-key "\C-c\C-b"
                                'js-send-buffer-and-go)
                (local-set-key "\C-cl"
                                'js-load-file-and-go)
                ))

;; fix bug with node.js command prompt
(setenv "NODE_NO_READLINE" "1")

(provide 'init-java-script)
;;; init-java-script ends here
