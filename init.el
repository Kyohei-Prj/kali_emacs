(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(virtualenv ac-mozc mozc multi-term elpy elscreen helm)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq inhibit-startup-message t)
(global-linum-mode t)
(windmove-default-keybindings)
(global-set-key (kbd "C-j") 'goto-line)
(global-set-key (kbd "C-h") 'helm-for-files)
(set-face-attribute 'region nil :background "green")

(require 'multi-term)
(setq multi-term-program "/bin/bash")
(require 'elscreen)
(elscreen-start)
(require 'mozc)
(setq default-input-method "japanese-mozc")

(elpy-enable)
(setq elpy-rpc-virtualenv-path 'current)
