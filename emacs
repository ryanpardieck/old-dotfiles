;move to the vagrant home dir

(cd "~/../../vagrant/")

(load "~/.emacs.d/my-loadpackages.el")
(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.d/my-noexternals.el")
  (load "~/.emacs.d/my-custom-mappings.el")
  (load "~/.emacs.d/my-leader-keys.el")
))

(add-hook 'auto-save-hook (lambda () (wg-save-session)))

























;!!!---ATTRIBUTION--!!!
;A running list of resources I used in making all my emacs configs (not including just this .emacs files)
;http://toumorokoshi.github.io/emacs-from-scratch-part-2-package-management.html
 
