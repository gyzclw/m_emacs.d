;;company-mode 设置
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)
(setq company-selection-wrap-around t)
(add-hook 'emmet-mode-hook
    (lambda ()
      (set (make-local-variable 'company-backends)
                        '((company-web-html company-yasnippet)))))
(add-hook 'js-mode-hook
    (lambda ()
      (set (make-local-variable 'company-backends)
     '((company-tern company-web-html company-yasnippet)))) (tern-mode t) )

;; Add yasnippet support for all company backends
;; https://github.com/syl20bnr/spacemacs/pull/179
(defvar company-mode/enable-yas t
  "Enable yasnippet for all backends.")

(defun company-mode/backend-with-yas (backend)
  (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
      backend
    (append (if (consp backend) backend (list backend))
      '(:with company-yasnippet))))

(setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))
(provide 'init-company)