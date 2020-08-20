;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;(require 'package)
;;(add-to-list 'package-archives (cons "melpa" "https://melpa.org/packages/") t)
;;(package-initialize)
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)
(setq package-archives
      '(("GNU ELPA"     . "http://elpa.gnu.org/packages/")
	("MELPA Stable" . "https://stable.melpa.org/packages/")
	("MELPA"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("MELPA Stable" . 1)
	("GNU ELPA"     . 3)
	("MELPA"        . 2)))
(setq ring-bell-function 'ignore)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-pyvenv elpy-module-highlight-indentation elpy-module-yasnippet elpy-module-django elpy-module-sane-defaults)))
 '(package-selected-packages
   (quote
    (ace-window avy-flycheck modern-cpp-font-lock clipmon xref-js2 js2-refactor js2-mode counsel flycheck evil-vimish-fold vimish-fold ess elpygen evil pyvenv elpy magit emmet-mode web-mode jinja2-mode markdown-mode racket-mode ## sml-mode)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "brightblue" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default"))))
 '(comint-highlight-prompt ((t (:inherit minibuffer-prompt :foreground "brightred"))))
 '(custom-comment-tag ((t (:foreground "cyan"))))
 '(custom-face-tag ((t (:foreground "brightblack"))))
 '(dired-directory ((t (:foreground "white"))))
 '(evil-ex-lazy-highlight ((t (:background "black" :foreground "brightwhite"))))
 '(flycheck-warning ((t (:inherit warning :underline t))))
 '(flymake-error ((t (:foreground "brightyellow"))))
 '(font-lock-comment-delimiter-face ((t (:inherit default :foreground "brightblack"))))
 '(font-lock-comment-face ((t (:foreground "brightblack"))))
 '(font-lock-function-name-face ((t (:foreground "brightred"))))
 '(font-lock-keyword-face ((t (:foreground "brightmagenta"))))
 '(font-lock-string-face ((t (:foreground "brightgreen"))))
 '(highlight-indentation-face ((t (:background "brightblue" :foreground "brightblack"))))
 '(isearch-fail ((t (:background "white"))))
 '(markdown-markup-face ((t (:slant normal :weight normal))))
 '(minibuffer-prompt ((t (:foreground "brightblue"))))
 '(racket-keyword-argument-face ((t (:foreground "brightyellow"))))
 '(racket-logger-config-face ((t (:inherit font-lock-comment-face :foreground "brightmagenta"))))
 '(region ((t (:background "lightgoldenrod2" :foreground "brightred" :underline nil))))
 '(vimish-fold-overlay ((t (:background "white")))))
(desktop-save-mode 1)
(require 'evil)
(evil-mode 1)
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "C-u") 'evil-scroll-up)
(package-initialize)
;; (elpy-enable)
(global-set-key (kbd "C-x g") 'magit-status)
;;(with-eval-after-load 'python
;;  (defun python-shell-completion-native-try ()
;;    "Return non-nil if can trigger native completion."
;;    (let ((python-shell-completion-native-enable t)
;;          (python-shell-completion-native-output-timeout
;;           python-shell-completion-native-try-output-timeout))
;;      (python-shell-completion-native-get-completions
;;       (get-buffer-process (current-buffer))
;;       nil "_"))))

(setq python-shell-completion-native-enable nil)
;;(require 'vimish-fold)
;;(vimish-fold-global-mode 1)
;;(evil-vimish-fold-mode 1)
;; (add-hook 'after-init-hook #'global-flycheck-mode)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

`(add-hook 'auto-save-hook 'org-save-all-org-buffers)`
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs-saves/" t)))

;; set maximum indentation for description lists
(setq org-list-description-max-indent 5)

;; prevent demoting heading also shifting text inside sections
(setq org-adapt-indentation nil)

(define-key evil-normal-state-map (kbd "<remap> <evil-next-line>") 'evil-next-visual-line)
(define-key evil-motion-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)
(define-key evil-motion-state-map (kbd "<remap> <evil-next-line>") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)

(add-hook 'markdown-mode-hook 'visual-line-mode)
(add-hook 'markdown-mode-hook 'as/markdown-config)
(defun as/markdown-config ()
  (local-set-key (kbd "M-q") 'ignore))
(global-set-key (kbd "<M-f2>") 'clipmon-autoinsert-toggle)
(add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)
(global-set-key (kbd "M-o") 'ace-window) 
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
