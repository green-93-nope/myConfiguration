#!/usr/bin/emacs --script
;;; this script is do the sys mantain with arch pacman mirrorlist

(defun use-source (source)
  (goto-char (point-min))
  (search-forward (concat "## " source))
  (forward-line)
  (letrec ((use-line
            (lambda ()
               (beginning-of-line)
               (when (and (equal "#" (string (char-after (point))))
                          (equal "S" (string (char-after (+ (point) 1)))))
                     (delete-char 1)
                     (forward-line)
                     (funcall use-line)))))
          (funcall use-line))
  )

(let (posx posy buf
           (pacnew "/etc/pacman.d/mirrorlist.pacnew")
           (mirror "/etc/pacman.d/mirrorlist"))
     (with-temp-buffer
      (insert-file-contents pacnew)
      ;; (use-source "Worldwide")
      (use-source "China")
      (write-file mirror)
      ))

;;; promirrorlist.el ends here
