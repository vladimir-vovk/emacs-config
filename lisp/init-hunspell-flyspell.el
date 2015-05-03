;;; package -- init-hunspell-flyspell
;;; Commentary:
;;;   hunspell flyspell configuration

;;; Code:

(setq-default ispell-program-name "hunspell")
(add-to-list 'exec-path "/usr/local/bin")
(setq ispell-dictionary "russian"
  ispell-extra-args '() ;; TeX mode "-t"
  ispell-silently-savep t)

(setq flyspell-mode-map nil)

(add-hook 'ispell-initialize-spellchecker-hook
  (lambda ()
    (setq ispell-base-dicts-override-alist
      '((nil ; default
         "[A-Za-z]" "[^A-Za-z]" "[']" t
         ("-d" "en_US" "-i" "utf-8") nil utf-8)
        ("russian"                   ; combo english+russian
         "[a-zA-ZАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯабвгдеёжзийклмнопрстуфхцчшщьыъэюя]"
         "[^a-zA-ZАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯабвгдеёжзийклмнопрстуфхцчшщьыъэюя]"
         "[-']"
         nil ("-d" "en_US,ru_RU") nil utf-8)))))

(add-hook 'org-mode-hook
  (lambda()
    (flyspell-mode)))

(add-hook 'markdown-mode-hook
  (lambda()
    (flyspell-mode)))

(provide 'init-hunspell-flyspell)
;;; init-hunspell-flyspell ends here
