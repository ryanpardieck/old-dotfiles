;move to the vagrant home dir

(cd "~/../../vagrant/")

(load "~/.emacs.d/my-loadpackages.el")
(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.d/my-noexternals.el")
  (load "~/.emacs.d/my-custom-mappings.el")
))


























;!!!---ATTRIBUTION--!!!
;A running list of resources I used in making all my emacs configs (not including just this .emacs files)
;http://toumorokoshi.github.io/emacs-from-scratch-part-2-package-management.html
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("42ac06835f95bc0a734c21c61aeca4286ddd881793364b4e9bc2e7bb8b6cf848" default)))
 '(magit-use-overlays nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
