;; Disable UI elements
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)

;; Font settings
(add-to-list 'default-frame-alist '(font . "hack-12"))
(add-to-list 'default-frame-alist '(height . 24))
(add-to-list 'default-frame-alist '(width . 80))

;; Show matching parens
(setq show-paren-delay 0)
(show-paren-mode 1)

;; Manually add path
(let ((path (shell-command-to-string ".~/.zshrc; echo -n $PATH")))
  (setenv "PATH" path)
  (setq exec-path
	(append
	 (split-string-and-unquote path ":")
	 exec-path)))


;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; Vim mode
(use-package evil
  :ensure t
  :config
  (evil-mode 1))

;; Theme
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t))

;; Helm
(use-package helm
  :ensure t
  :init
  ;; Enable fuzzy matching
  (setq helm-M-x-fuzzy-match t
	helm-mode-fuzzy-match t
	helm-buffers-fuzzy-matching t
	helm-recentf-fuzzy-match t
	helm-locate-fuzzy-match t
	helm-semantic-fuzzy-match t
	helm-imenu-fuzzy-match t
	helm-completion-in-region-fuzzy-match t)

  ;; Other things from the tutorial
  (setq helm-candidate-number-list 150
	helm-split-window-in-side-p t
	helm-move-to-line-cycle-in-source t
	helm-echo-input-in-header-line t
	helm-autoresize-max-height 0
	helm-autoresize-min-height 20)

  ;; Fix [Display not ready] error
  (setq helm-exit-idle-delay 0)
  :config
  (helm-mode 1))

;; Restart emacs
(use-package restart-emacs
  :ensure t
  :init
  (setq restart-emacs-restore-frames t))

;; Show tooltips for key chords
(use-package which-key
  :ensure t
  :init
  (setq which-key-seperator " ")
  (setq which-key-prefix-prefix "+")
  :config
  (which-key-mode 1))
  
;; Custom keybindings
(use-package general
  :ensure t
  :config (general-define-key
	   :states '(normal visual insert emacs)
	   :prefix "SPC"
	   :non-normal-prefix "M-SPC"
	   ;; "/"  '(counsel-rb :which-key "ripgrep") ; requires counsel package
	   "TAB"   '(switch-to-prev-buffer :which-key "previous buffer")
	   "SPC"   '(helm-M-x :which-key "M-x")
	   ;; File operations
	   "f"     '(:prefix t :which-key "files")
	   "ff"    '(helm-find-files :which-key "open files")
	   "fr"    '(helm-recentf :which-key "recent files")
	   ;; Buffer operations
	   "b"     '(:prefix t :which-key "buffers")
	   "b TAB" '(switch-to-prev-buffer :which-key "previous buffer")
	   "bb"    '(helm-buffers-list :which-key "buffers list")
	   ;; Window operations
	   "w"     '(:prefix t :which-key "windows")
	   "wl"    '(windmove-right :which-key "focus right")
	   "wh"    '(windmove-left :which-key "focus left")
	   "wk"    '(windmove-up :which-key "focus up")
	   "wj"    '(windmove-down :which-key "focus down")
	   "wv"    '(split-window-right :which-key "vertical split")
	   "wh"    '(split-window-below :which-key "horizontal split")
	   "wq"    '(delete-window :which-key "close")
	   ;; Closing/Restarting
	   "q"     '(:prefix t :which-key "Quit/Restart")
	   "qq"    '(save-buffers-kill-terminal :which-key "quit")
	   "qr"    '(restart-emacs :which-key "restart")
	   ;; Misc
	   "at"    '(ansi-term :which-key "open terminal")))

;; Projectile
(use-package projectile
  :ensure t
  :init
  (setq projectile-require-project-root nil)
  :config
  (projectile-mode 1))

;; All The Icons
(use-package all-the-icons
  :ensure t)

;; NeoTree
(use-package neotree
  :ensure t
  :init
  (setq neo-there (if (display-graphic-p) 'icons 'arrow)))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (restart-emacs evil use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
