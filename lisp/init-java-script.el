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

(provide 'init-java-script)
;;; init-java-script ends here
