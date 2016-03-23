;; -*- coding: utf-8 -*-
;(defvar best-gc-cons-threshold gc-cons-threshold "Best default gc threshold value. Should't be too big.")
(defvar best-gc-cons-threshold 4000000 "Best default gc threshold value. Should't be too big.")
;; don't GC during startup to save time
(setq gc-cons-threshold most-positive-fixnum)
(setq emacs-load-start-time (current-time))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(require 'init-utils)
(require 'init-elpa)
(require 'init-custom-theme)
(require 'init-modeline)
;;----------------------------------------------------------------------------
;; plugins  loading
;;----------------------------------------------------------------------------
(require 'init-smartparens)
(require 'init-flymake)
(require 'init-yasnippet)
(require 'init-company)
(require 'init-window)
(require 'init-emmet)
(require 'init-git)
(require 'init-helm)
;;(require 'init-ido)
;;----------------------------------------------------------------------------
;; plugins  language
;;----------------------------------------------------------------------------
(require 'init-markdown)


