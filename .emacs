(require 'cl)
(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'git-commit)
(add-hook 'git-commit-mode-hook 'turn-on-flyspell)
(add-hook 'git-commit-mode-hook (lambda () (toggle-save-place 0)))

(add-hook 'verilog-mode-hook '(lambda ()
  (add-hook 'write-file-functions (lambda()
  (untabify (point-min) (point-max))
  nil))))
