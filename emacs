;move to the vagrant home dir

(cd "~/../../vagrant/")

(load "~/.my-emacs/my-loadpackages.el")
(add-hook 'after-init-hook '(lambda ()
  (load "~/.my-emacs/my-noexternals.el")
  (load "~/.my-emacs/my-custom-mappings.el")
  (load "~/.my-emacs/my-leader-keys.el")
))

(add-hook 'auto-save-hook (lambda () (wg-save-session)))

























;!!!---ATTRIBUTION--!!!
;A running list of resources I used in making all my emacs configs (not including just this .emacs files)
;http://toumorokoshi.github.io/emacs-from-scratch-part-2-package-management.html
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("60f04e478dedc16397353fb9f33f0d895ea3dab4f581307fbf0aa2f07e658a40" default)))
 '(magit-diff-use-overlays nil)
 '(speedbar-show-unknown-files t)
 '(syslog-debug-face (quote ((t :background unspecified :foreground "#5FFFFF" :weight bold))))
 '(syslog-error-face (quote ((t :background unspecified :foreground "#FF1493" :weight bold))))
 '(syslog-hour-face (quote ((t :background unspecified :foreground "#87D700"))))
 '(syslog-info-face (quote ((t :background unspecified :foreground "#5FD7FF" :weight bold))))
 '(syslog-ip-face (quote ((t :background unspecified :foreground "#CDC673"))))
 '(syslog-su-face (quote ((t :background unspecified :foreground "#D700D7"))))
 '(syslog-warn-face (quote ((t :background unspecified :foreground "#FF8C00" :weight bold))))
 '(tabbar-mode t nil (tabbar)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
