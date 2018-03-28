(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))

(require 'cl)
(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'git-commit)
(add-hook 'git-commit-mode-hook 'turn-on-flyspell)
(add-hook 'git-commit-mode-hook (lambda () (toggle-save-place 0)))

(add-hook 'verilog-mode-hook '(lambda ()
  (add-hook 'write-file-functions (lambda()
  (untabify (point-min) (point-max))
  nil))))

(custom-set-variables
 '(verilog-auto-delete-trailing-whitespace t)
 '(verilog-auto-newline nil)
)
