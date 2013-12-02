(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(gist yaml-mode pretty-lambdada haml-mode crontab-mode
                           magit-find-file apache-mode ecb
                           ag ac-inf-ruby
                           coffee-mode ecukes browse-kill-ring
                           go-mode less-css-mode magit-commit-training-wheels
                           magit-gh-pulls markdown-mode puppet-mode
                           rspec-mode rvm heroku
)
  "A list of packages to ensure are installed at launch.")

; cask

(prelude-require-packages my-packages)

(setq stack-trace-on-error t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(show-trailing-whitespace t))

;; I hate tabs!
(setq-default indent-tabs-mode nil)
;; to setup tabs

(setq c-basic-indent 2)
(setq tab-width 2)
(setq indent-tabs-mode nil)

(global-set-key (kbd "C-c w s")
                'delete-trailing-whitespace)

(require 'magit-find-file)
(global-set-key (kbd "C-c p") 'magit-find-file-completing-read)
