; my-loadpackages.el
; loading package
(load "~/.emacs.d/my-packages.el")

;(require 'graphene)

(load-theme 'monokai t)

(require 'key-chord)
(key-chord-mode 1)

(require 'evil)
(evil-mode 1)

(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-key "\\" 'find-file)


(require 'magit)
(define-key global-map (kbd "C-c m") 'magit-status)

;(require 'yasnippet)
;(yas-global-mode 1)
;(yas-load-directory "~/.emacs.d/snippets")
;(add-hook 'term-mode-hook (lambda()
;    (setq yas-dont-activate t)))





