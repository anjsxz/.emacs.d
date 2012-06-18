;;;=====================��Emacs����C/C++���  http://blog.csdn.net/karotte/article/details/6990031========================


(provide 'karotte_config)



;;;gdb-UI����
(setq gdb-many-windows t)
(load-library "multi-gud.el")
(load-library "multi-gdb-ui.el")

;;�۵��ʹ�����buffer�����д���
;(define-key semantic-tag-folding-mode-map (kbd "C--") 'semantic-tag-folding-fold-all)
;(define-key semantic-tag-folding-mode-map (kbd "C-=") 'semantic-tag-folding-show-all)

;;�۵��ʹ򿪵���buffer�����д���
;(define-key semantic-tag-folding-mode-map (kbd "C-_") 'semantic-tag-folding-fold-block)
;(define-key semantic-tag-folding-mode-map (kbd "C-+") 'semantic-tag-folding-fold-block)

;;ecb����
;(require 'ecb-autoloads)
;(setq ecb-tip-of-the-day nil)

;;����semantic������Χ
(setq semanticdb-project-roots 
      (list
        (expand-file-name "/")))

;;�Զ��岹ȫ��� ����������м�Ͳ�ȫ�������tab		
(defun my-indent-or-complete ()
   (interactive)
   (if (looking-at "\\>")
      (hippie-expand nil)
      (indent-for-tab-command))
)

 ;;��ȫ��ݼ��� ctrl-tab��senator��ȫ������ʾ�б�
 ;;alt+/��ȫ����ʾ�б���ѡ��
(global-set-key [(control tab)] 'my-indent-or-complete)
;(define-key c-mode-base-amp [(meta ?/)] 'semantic-ia-complete-symbol-menu)
(autoload 'senator-try-expand-semantic "senator")
(setq hippie-expand-try-functions-list
      '(
        senator-try-expand-semantic
        try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-expand-list
        try-expand-list-all-buffers
        try-expand-line
        try-expand-line-all-buffers
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-whole-kill
        )
)

;;��ʾ��������
(global-set-key [f1] 'manual-entry)
(global-set-key [C-f1] 'info)

;;f3Ϊ�����ַ�����alt+f3�رյ�ǰ������
(global-set-key [f3] 'grep-find)
(global-set-key [M-f3] 'kill-this-buffer)

;;speedbar��ݼ�
(global-set-key [(f4)] 'speedbar-get-focus)

;;��ʾ/���ع��������������
(global-set-key [f5] 'tool-bar-mode)

;;��ʾ/���ز˵��� M-x menu-bar-open
(global-set-key [C-f5] 'menu-bar-mode)

;;gdb����
(global-set-key [f6] 'gdb)

;;����C-F12���ٲ鿴�ճ̰���
;;F12������������
(global-set-key [f12] 'semantic-ia-fast-jump)
(global-set-key [C-f12] 'list-bookmarks)

;;shift-f12����ȥ
;(global-set-key [S-f12])
;;;=====================��Emacs����C/C++���  http://blog.csdn.net/karotte/article/details/6990031========================
