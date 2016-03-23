;;禁用tramp
(setq tramp-ssh-controlmaster-options "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;;use ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
          (autoload 'ibuffer "ibuffer" "List buffers." t)
(provide 'init-utils)
